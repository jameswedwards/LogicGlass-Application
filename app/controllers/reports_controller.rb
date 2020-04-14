class ReportsController < ApplicationController
  before_action :authenticate_user!
  def index
    @members = Member.all
    @events = Event.group_by_month(:event_date, time_zone: false).count
    @event = Event.joins(:event_type).group('Event_Type').count
    @member_check_ins = MemberCheckIn.joins(:event).order('count(member_id) DESC').group('description').limit(5).count('member_id')
    @sponsors = Sponsor.joins(:sponsor_type).group('Sponsor_Type').count
    respond_to do |format|
      format.html
      format.json
      format.pdf { render template: 'reports/report_report', pdf: 'Report', layout: 'pdf.html'}
    end
  end
  def reports
  end
end
