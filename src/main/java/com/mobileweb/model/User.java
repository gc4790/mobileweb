package com.mobileweb.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;


@Entity
@Table(name = "User")

public class User implements Serializable{

   /**
	 * 
	 */
	private static final long serialVersionUID = -8689672611993028930L;

   @Id
   @GeneratedValue
   @Column(name = "id")
   private Long id;

   @Column(name = "uname")
   @Size(max = 20, min = 3, message = "{user.name.invalid}")
   @NotEmpty(message="Please Enter your name")
   private String name;

   @Column(name = "USER_EMAIL", unique = true)
   @Email(message = "{user.email.invalid}")
   @NotEmpty(message="Please Enter your email")
   private String email;
   
   private String password;

   public Long getId() {
      return id;
   }

   public void setId(Long id) {
      this.id = id;
   }

   public String getName() {
      return name;
   }

   public void setName(String name) {
      this.name = name;
   }

   public String getEmail() {
      return email;
   }

   public void setEmail(String email) {
      this.email = email;
   }
   
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}

@Override
public String toString() {
	StringBuilder builder = new StringBuilder();
	builder.append(" {id=");
	builder.append(id);
	builder.append(", name=");
	builder.append(name);
	builder.append(", email=");
	builder.append(email);
	builder.append("}");
	return builder.toString();
}
   
   
   
}
