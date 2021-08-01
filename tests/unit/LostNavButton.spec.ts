import { shallowMount } from '@vue/test-utils'
import LostNavButton from '@/components/LostNavButton.vue'

describe('LostNavButton.vue', () => {
  it('renders props.navText when passed', () => {
    const NavText = 'Nav_01'
    const wrapper = shallowMount(LostNavButton, {
      props: { NavText }
    })
    expect(wrapper.text()).toMatch(NavText)
  })
})
