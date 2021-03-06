/*
 PureMVC - Copyright(c) 2006-08 Futurecale, Inc., Some rights reserved.
 Your reuse is governed by Creative Commons Attribution 2.5 License
*/
package org.puremvc.as3.patterns.command
{
	import org.puremvc.as3.patterns.command.*;
	import org.puremvc.as3.interfaces.*;

	/**
	 * A SimpleCommand subclass used by MacroCommandTestCommand.
	 *
  	 * @see org.puremvc.as3.patterns.command.MacroCommandTest MacroCommandTest
  	 * @see org.puremvc.as3.patterns.command.MacroCommandTestCommand MacroCommandTestCommand
  	 * @see org.puremvc.as3.patterns.command.MacroCommandTestVO MacroCommandTestVO
	 */
	public class MacroCommandTestSub2Command extends SimpleCommand
	{
		public function MacroCommandTestSub2Command()
		{
			super();
		}
		
		/**
		 * Fabricate a result by multiplying the input by itself
		 * 
		 * @param event the <code>IEvent</code> carrying the <code>MacroCommandTestVO</code>
		 */
		override public function execute( note:INotification) :void
		{
			
			var vo:MacroCommandTestVO = note.getBody() as MacroCommandTestVO;
			
			// Fabricate a result
			vo.result2 = vo.input * vo.input;

		}
		
	}
}