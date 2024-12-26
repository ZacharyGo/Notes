package com.frankmoley.lil.sbet.landon.roomwebapp.data;

import org.springframework.data.jpa.repository.JpaRepository;

import com.frankmoley.lil.sbet.landon.roomwebapp.models.StaffMember;

public interface StaffRepository  extends JpaRepository<StaffMember, String> {

}
