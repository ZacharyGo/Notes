package com.frankmoley.lil.sbet.landon.roomwebapp.models;

public enum Position {
	HOUSEKEEPING, FRONT_DESK, SECURITY, CONCIERGE;
	
	public String toString() {
		switch(this) {
			case CONCIERGE:
				return "Concierge";
			case HOUSEKEEPING:
				return "Hoousekeeping";			
			case FRONT_DESK:
				return "Front Desk";
			case SECURITY:
				return "Security";
		}
		return "";
	}
}
