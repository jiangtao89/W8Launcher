.class public Lcom/lx/launcher8/setting/wp8/AppListStyleAct;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.source "AppListStyleAct.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mMainView:Landroid/view/View;

.field private radio1:Landroid/widget/RadioButton;

.field private radio2:Landroid/widget/RadioButton;

.field private radio3:Landroid/widget/RadioButton;

.field private radioImg1:Landroid/widget/ImageView;

.field private radioImg2:Landroid/widget/ImageView;

.field private radioImg3:Landroid/widget/ImageView;

.field private settings:Lcom/lx/launcher8/cfg/AppSetting;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radio1:Landroid/widget/RadioButton;

    .line 18
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radio2:Landroid/widget/RadioButton;

    .line 19
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radio3:Landroid/widget/RadioButton;

    .line 21
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radioImg1:Landroid/widget/ImageView;

    .line 22
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radioImg2:Landroid/widget/ImageView;

    .line 23
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radioImg3:Landroid/widget/ImageView;

    .line 25
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    .line 27
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->mMainView:Landroid/view/View;

    .line 15
    return-void
.end method

.method private createView()V
    .locals 3

    .prologue
    .line 36
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->mMainView:Landroid/view/View;

    .line 38
    new-instance v0, Lcom/lx/launcher8/cfg/AppSetting;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/cfg/AppSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    .line 40
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->initView()V

    .line 41
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 44
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->mMainView:Landroid/view/View;

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radio1:Landroid/widget/RadioButton;

    .line 45
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->mMainView:Landroid/view/View;

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radio2:Landroid/widget/RadioButton;

    .line 46
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->mMainView:Landroid/view/View;

    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radio3:Landroid/widget/RadioButton;

    .line 48
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radio1:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 49
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radio2:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 50
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radio3:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 52
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radio1:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 53
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radio2:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 54
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radio3:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 56
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->mMainView:Landroid/view/View;

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radioImg1:Landroid/widget/ImageView;

    .line 57
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->mMainView:Landroid/view/View;

    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radioImg2:Landroid/widget/ImageView;

    .line 58
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->mMainView:Landroid/view/View;

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radioImg3:Landroid/widget/ImageView;

    .line 60
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/AppSetting;->getThemePaper()I

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radioImg1:Landroid/widget/ImageView;

    const v1, 0x7f0201f3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radioImg2:Landroid/widget/ImageView;

    const v1, 0x7f0201f1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radioImg3:Landroid/widget/ImageView;

    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radioImg1:Landroid/widget/ImageView;

    const-string v1, "#959595"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 71
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radioImg2:Landroid/widget/ImageView;

    const-string v1, "#959595"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 72
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radioImg3:Landroid/widget/ImageView;

    const-string v1, "#959595"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 74
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radioImg1:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radioImg2:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radioImg3:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/AppSetting;->getThemeAppList()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->mMainView:Landroid/view/View;

    const v1, 0x7f09000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, -0x100

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 91
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radioImg1:Landroid/widget/ImageView;

    const v1, 0x7f0201f2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radioImg2:Landroid/widget/ImageView;

    const v1, 0x7f0201f0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radioImg3:Landroid/widget/ImageView;

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 80
    :pswitch_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radio1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 83
    :pswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radio2:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 86
    :pswitch_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radio3:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 90
    :cond_1
    const/4 v0, -0x1

    goto :goto_2

    .line 78
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onChecked(Landroid/widget/RadioButton;)V
    .locals 2
    .parameter "radio"

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radio1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 95
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radio2:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 96
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radio3:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 99
    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->createView()V

    .line 32
    const v0, 0x7f0a0120

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 33
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 103
    if-nez p2, :cond_0

    .line 118
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 106
    :pswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radio1:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 107
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/cfg/AppSetting;->setThemeAppList(I)V

    goto :goto_0

    .line 110
    :pswitch_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radio2:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 111
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/cfg/AppSetting;->setThemeAppList(I)V

    goto :goto_0

    .line 114
    :pswitch_3
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radio3:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 115
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/cfg/AppSetting;->setThemeAppList(I)V

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x7f090008
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 136
    :goto_0
    :pswitch_0
    return-void

    .line 124
    :pswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radio1:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 125
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/cfg/AppSetting;->setThemeAppList(I)V

    goto :goto_0

    .line 128
    :pswitch_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radio2:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 129
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/cfg/AppSetting;->setThemeAppList(I)V

    goto :goto_0

    .line 132
    :pswitch_3
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->radio3:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 133
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppListStyleAct;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/cfg/AppSetting;->setThemeAppList(I)V

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x7f090007
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
