require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "layout"
os.execute("su")

layout={
  LinearLayout;
  layout_height="fill";
  layout_width="fill";
  orientation="vertical";
  {
    LinearLayout;
    layout_width="10%w";
    gravity="center";
    layout_height="wrap";
  };
  {
    ToggleButton;
    layout_width="-1";
    layout_height="10%h";
    id="bypass";
    textColor="#ffffffff";
    layout_marginTop="5";
    padding="5";
    textOn="GAME";
    textOff="GAME";
    textSize="26dp";
  };
};

activity.setTheme(R.AndLua1)
activity.setTitle("NGUYỄN ĐỨC HÂN")
activity.setContentView(loadlayout(layout))


function MRD(Patch1,MRDmod)
  Patch2=activity.getLuaDir(Patch1)
  os.execute("su -c chmod 777 "..Patch2)
  Runtime.getRuntime().exec("su -c "..Patch2)
  (MRDmod,"#FF009DFF","#FFFFFFFF","9","50")
end

function bypass.OnCheckedChangeListener()
  MRD("CPP/bypass","Active")
end
