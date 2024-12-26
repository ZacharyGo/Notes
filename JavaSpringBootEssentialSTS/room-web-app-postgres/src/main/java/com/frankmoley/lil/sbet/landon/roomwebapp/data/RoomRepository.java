package com.frankmoley.lil.sbet.landon.roomwebapp.data;

import org.springframework.data.jpa.repository.JpaRepository;

import com.frankmoley.lil.sbet.landon.roomwebapp.models.Room;

public interface RoomRepository extends JpaRepository<Room, Long> { //Room element to be served, Long datatype of te id

}
