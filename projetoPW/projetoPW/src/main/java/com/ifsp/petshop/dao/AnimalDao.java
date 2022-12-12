package com.ifsp.petshop.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ifsp.petshop.model.Animal;

public class AnimalDao {

	public static List<Animal> listarAnimais(){
		
		try {
			
			String query = "SELECT * FROM TB_ANIMAL";
			PreparedStatement con;
			
			DbConnection dbConnection = new DbConnection();
			
			con = dbConnection.getConnection().prepareStatement(query);
			
			ResultSet resultSet = con.executeQuery();
			
            ArrayList<Animal> listaAnimais = new ArrayList<>();
            while(resultSet.next()) {
            	
            	Animal animal = new Animal();

            	animal.setId(resultSet.getInt("id"));
            	animal.setNome(resultSet.getString("nome"));
            	animal.setRaca(resultSet.getString("raca"));
            	animal.setCor(resultSet.getString("cor"));
            	animal.setIdade(resultSet.getInt("idade"));

            	listaAnimais.add(animal);
            }
			
        	resultSet.close();
            con.close();

            return listaAnimais;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}
	
	public static Animal procurarAnimalPorId(Integer id){
		
		String query = "SELECT * FROM TB_ANIMAL WHERE ID = ?";
		
		PreparedStatement con;
        
        try {
        	
        	DbConnection dbConnection = new DbConnection();
        	
        	con = dbConnection.getConnection().prepareStatement(query);
        	con.setInt(1, id);
        	
        	ResultSet resultSet = con.executeQuery();
        	
        	Animal animal = new Animal();
        	
        	 while(resultSet.next()) {
             	animal.setId(resultSet.getInt("id"));
             	animal.setNome(resultSet.getString("nome"));
             	animal.setRaca(resultSet.getString("raca"));
             	animal.setCor(resultSet.getString("cor"));
             	animal.setIdade(resultSet.getInt("idade"));
             }
        	 
         	resultSet.close();
            con.close();
            
        	return animal;
        	
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
		return null;
	}
	
	public static void deletarAnimalPorId(Integer id){
		
		String query = "DELETE FROM TB_ANIMAL WHERE id = ?";
		
		PreparedStatement con;
        
        try {
        	
        	DbConnection dbConnection = new DbConnection();
        	
        	con = dbConnection.getConnection().prepareStatement(query);

        	con.setInt(1, id);
        	con.executeUpdate();
        	
        	con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
	}
	
	public static void adicionarAnimal(Animal animal){
		
		String query = "INSERT INTO TB_ANIMAL (nome, raca, idade, cor) VALUES (?, ?, ?, ?)";
		
		PreparedStatement con;
        
        try {
        	
        	DbConnection dbConnection = new DbConnection();
        	
        	con = dbConnection.getConnection().prepareStatement(query);

        	con.setString(1, animal.getNome());
        	con.setString(2, animal.getRaca());
        	con.setInt(3, animal.getIdade());
        	con.setString(4, animal.getCor());
        	
        	con.executeUpdate();
        	con.close();	
        } catch (SQLException e) {
            e.printStackTrace();
        }
	}
		
	public static void editarAnimal(Animal animal){
		String query = "UPDATE TB_ANIMAL SET nome = ?, raca = ?, idade = ?, cor = ? WHERE ID = ?";
		
		PreparedStatement con;
		
        try {
        	
        	DbConnection dbConnection = new DbConnection();
        	
        	con = dbConnection.getConnection().prepareStatement(query);
        	
        	con.setString(1, animal.getNome());
        	con.setString(2, animal.getRaca());
        	con.setInt(3, animal.getIdade());
        	con.setString(4, animal.getCor());
        	con.setInt(5, animal.getId());
        	
        	con.executeUpdate();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }	
	}
	
}
