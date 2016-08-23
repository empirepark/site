import Ember from 'ember'
import Countdown from 'countdownjs'
import CountdownComponent from 'ember-countdown/components/countdown-component'

export default CountdownComponent.extend({
  units: Ember.computed(function() {
    return Countdown.DAYS | Countdown.HOURS | Countdown.MINUTES | Countdown.SECONDS
  }),

  countdownText() {
    Countdown.setLabels(this.get('singularLabel'),
                        this.get('pluralLabel'),
                        this.get('lastLabel'),
                        this.get('delimLabel'),
                        this.get('emptyLabel'))

    const newCountdown = Countdown(this.get('parsedStartDate'),
                                   this.get('parsedEndDate'),
                                   this.get('units'),
                                   this.get('max'))

    this.set('months', newCountdown.months)
    this.set('days', newCountdown.days)
    this.set('hours', newCountdown.hours)
    this.set('minutes', newCountdown.minutes)
    this.set('seconds', newCountdown.seconds)
  }
})
