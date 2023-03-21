trigger ClosedOpportunityTrigger on Opportunity (after insert, after update){
    List<Task> tasksToCreate = new List<Task>();
    for (Opportunity opportunity : Trigger.new) {
        if (opportunity.StageName == 'Closed Won') {
            Task task = new Task();
            task.Subject = 'Follow Up Test Task';
            task.WhatId = Opportunity.Id;

            tasksToCreate.add(task);
        }
    }

    if (tasksToCreate.size() > 0) {
        insert tasksToCreate;
    }
}