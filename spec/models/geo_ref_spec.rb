require 'spec_helper'



describe GeoRef do

  let(:geo_ref) { GeoRef.new }

  context "validation" do
    context "requires" do

      geo_ref = GeoRef.new

      m_factory = ::RGeo::Geographic.simple_mercator_factory(
        :has_z_coordinate => true,
        :has_m_coordinate => true
      )

      geo_ref.a_point = m_factory.point(40.091565, -88.241421, 757, 2020)
      geo_ref.a_polygon = geo_ref.a_point.buffer(100)

      geo_ref.save

      geo_ref.id

      before do
        # this code does *not* execute.  Why not?
        geo_ref.a_point = m_factory.point(40.091565, -88.241421, 757, 2020)
        geo_ref.save
      end
    end

    specify "At least one point or one line or one polygon or one multi_polygon is provided" do
      expect(geo_ref.errors.include?(:cashed_display)).to be_true
    end
  end
end
