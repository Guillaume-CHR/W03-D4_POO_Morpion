#! /usr/bin/env ruby
##****************************************************************************
# RUBY - TIC TAC TOE
#****************************************************************************
#   Ruby's Program - Main Program
#   Written by: Guillaume CHRISTE
# 	Date: 24-Jan-2019
#   
#   Description:
# 		- Program to simulate a Tic Tac Toe game
# 		- It uses the MVC method ... or tries to ...
# 		
# 	Gems:
		require 'bundler'
		Bundler.require
#		
#	Links:
		require './lib/router'
#
#****************************************************************************
Router.new.perform

# End of Main Program ........................................................
#.............................................................................
#.............................................................................