.class public Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.source "LockScreenStyleAct.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mMainView:Landroid/view/View;

.field private radio1:Landroid/widget/RadioButton;

.field private radio2:Landroid/widget/RadioButton;

.field private radio3:Landroid/widget/RadioButton;

.field private radio4:Landroid/widget/RadioButton;

.field private radio5:Landroid/widget/RadioButton;

.field private radioImg1:Landroid/widget/ImageView;

.field private radioImg2:Landroid/widget/ImageView;

.field private radioImg3:Landroid/widget/ImageView;

.field private radioImg4:Landroid/widget/ImageView;

.field private radioImg5:Landroid/widget/ImageView;

.field private settings:Lcom/anall/screenlock/provider/LockSetting;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio1:Landroid/widget/RadioButton;

    .line 18
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio2:Landroid/widget/RadioButton;

    .line 19
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio3:Landroid/widget/RadioButton;

    .line 20
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio4:Landroid/widget/RadioButton;

    .line 21
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio5:Landroid/widget/RadioButton;

    .line 23
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radioImg1:Landroid/widget/ImageView;

    .line 24
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radioImg2:Landroid/widget/ImageView;

    .line 25
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radioImg3:Landroid/widget/ImageView;

    .line 26
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radioImg4:Landroid/widget/ImageView;

    .line 27
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radioImg5:Landroid/widget/ImageView;

    .line 29
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->settings:Lcom/anall/screenlock/provider/LockSetting;

    .line 31
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->mMainView:Landroid/view/View;

    .line 15
    return-void
.end method

.method private createView()V
    .locals 3

    .prologue
    .line 40
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030011

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->mMainView:Landroid/view/View;

    .line 42
    new-instance v0, Lcom/anall/screenlock/provider/LockSetting;

    invoke-direct {v0, p0}, Lcom/anall/screenlock/provider/LockSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->settings:Lcom/anall/screenlock/provider/LockSetting;

    .line 44
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->initView()V

    .line 45
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 48
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->mMainView:Landroid/view/View;

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio1:Landroid/widget/RadioButton;

    .line 49
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->mMainView:Landroid/view/View;

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio2:Landroid/widget/RadioButton;

    .line 50
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->mMainView:Landroid/view/View;

    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio3:Landroid/widget/RadioButton;

    .line 51
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->mMainView:Landroid/view/View;

    const v1, 0x7f09000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio4:Landroid/widget/RadioButton;

    .line 52
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->mMainView:Landroid/view/View;

    const v1, 0x7f09006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio5:Landroid/widget/RadioButton;

    .line 54
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio1:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 55
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio2:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 56
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio3:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 57
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio4:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 58
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio5:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 60
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio1:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 61
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio2:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 62
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio3:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 63
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio4:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 64
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio5:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 66
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->mMainView:Landroid/view/View;

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radioImg1:Landroid/widget/ImageView;

    .line 67
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->mMainView:Landroid/view/View;

    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radioImg2:Landroid/widget/ImageView;

    .line 68
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->mMainView:Landroid/view/View;

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radioImg3:Landroid/widget/ImageView;

    .line 69
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->mMainView:Landroid/view/View;

    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radioImg4:Landroid/widget/ImageView;

    .line 70
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->mMainView:Landroid/view/View;

    const v1, 0x7f090069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radioImg5:Landroid/widget/ImageView;

    .line 72
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radioImg1:Landroid/widget/ImageView;

    const-string v1, "#959595"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 73
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radioImg2:Landroid/widget/ImageView;

    const-string v1, "#959595"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 74
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radioImg3:Landroid/widget/ImageView;

    const-string v1, "#959595"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 75
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radioImg4:Landroid/widget/ImageView;

    const-string v1, "#959595"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 76
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radioImg5:Landroid/widget/ImageView;

    const-string v1, "#959595"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 78
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radioImg1:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radioImg2:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radioImg3:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radioImg4:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radioImg5:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->settings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v0}, Lcom/anall/screenlock/provider/LockSetting;->getLockTheme()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->mMainView:Landroid/view/View;

    const v1, 0x7f09000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x100

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 103
    return-void

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 89
    :pswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio2:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 92
    :pswitch_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio3:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 95
    :pswitch_3
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio4:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 98
    :pswitch_4
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio5:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 102
    :cond_0
    const/4 v0, -0x1

    goto :goto_1

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private onChecked(Landroid/widget/RadioButton;)V
    .locals 2
    .parameter "radio"

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 107
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio2:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 108
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio3:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 109
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio4:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 110
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio5:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 113
    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->createView()V

    .line 36
    const v0, 0x7f0a0136

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 37
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 117
    if-nez p2, :cond_0

    .line 140
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 120
    :sswitch_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio1:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 121
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->settings:Lcom/anall/screenlock/provider/LockSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anall/screenlock/provider/LockSetting;->setLockTheme(I)V

    goto :goto_0

    .line 124
    :sswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio2:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 125
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->settings:Lcom/anall/screenlock/provider/LockSetting;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/anall/screenlock/provider/LockSetting;->setLockTheme(I)V

    goto :goto_0

    .line 128
    :sswitch_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio3:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 129
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->settings:Lcom/anall/screenlock/provider/LockSetting;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/anall/screenlock/provider/LockSetting;->setLockTheme(I)V

    goto :goto_0

    .line 132
    :sswitch_3
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio4:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 133
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->settings:Lcom/anall/screenlock/provider/LockSetting;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/anall/screenlock/provider/LockSetting;->setLockTheme(I)V

    goto :goto_0

    .line 136
    :sswitch_4
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio5:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 137
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->settings:Lcom/anall/screenlock/provider/LockSetting;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/anall/screenlock/provider/LockSetting;->setLockTheme(I)V

    goto :goto_0

    .line 118
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090008 -> :sswitch_0
        0x7f09000a -> :sswitch_1
        0x7f09000c -> :sswitch_2
        0x7f09000e -> :sswitch_3
        0x7f09006a -> :sswitch_4
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 166
    :goto_0
    return-void

    .line 146
    :sswitch_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio1:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 147
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->settings:Lcom/anall/screenlock/provider/LockSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anall/screenlock/provider/LockSetting;->setLockTheme(I)V

    goto :goto_0

    .line 150
    :sswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio2:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 151
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->settings:Lcom/anall/screenlock/provider/LockSetting;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/anall/screenlock/provider/LockSetting;->setLockTheme(I)V

    goto :goto_0

    .line 154
    :sswitch_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio3:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 155
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->settings:Lcom/anall/screenlock/provider/LockSetting;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/anall/screenlock/provider/LockSetting;->setLockTheme(I)V

    goto :goto_0

    .line 158
    :sswitch_3
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio4:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 159
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->settings:Lcom/anall/screenlock/provider/LockSetting;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/anall/screenlock/provider/LockSetting;->setLockTheme(I)V

    goto :goto_0

    .line 162
    :sswitch_4
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->radio5:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 163
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenStyleAct;->settings:Lcom/anall/screenlock/provider/LockSetting;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/anall/screenlock/provider/LockSetting;->setLockTheme(I)V

    goto :goto_0

    .line 144
    :sswitch_data_0
    .sparse-switch
        0x7f090007 -> :sswitch_0
        0x7f090009 -> :sswitch_1
        0x7f09000b -> :sswitch_2
        0x7f09000d -> :sswitch_3
        0x7f090069 -> :sswitch_4
    .end sparse-switch
.end method
