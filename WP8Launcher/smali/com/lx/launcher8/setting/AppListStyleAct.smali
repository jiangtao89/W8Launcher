.class public Lcom/lx/launcher8/setting/AppListStyleAct;
.super Lcom/lx/launcher8/NoSearchAct;
.source "AppListStyleAct.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mFirstTitle:Landroid/widget/TextView;

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

    .line 17
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radio1:Landroid/widget/RadioButton;

    .line 20
    iput-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radio2:Landroid/widget/RadioButton;

    .line 21
    iput-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radio3:Landroid/widget/RadioButton;

    .line 23
    iput-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radioImg1:Landroid/widget/ImageView;

    .line 24
    iput-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radioImg2:Landroid/widget/ImageView;

    .line 25
    iput-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radioImg3:Landroid/widget/ImageView;

    .line 27
    iput-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    .line 17
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 42
    const v0, 0x7f090008

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/AppListStyleAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radio1:Landroid/widget/RadioButton;

    .line 43
    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/AppListStyleAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radio2:Landroid/widget/RadioButton;

    .line 44
    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/AppListStyleAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radio3:Landroid/widget/RadioButton;

    .line 46
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radio1:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 47
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radio2:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 48
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radio3:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 50
    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/AppListStyleAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radioImg1:Landroid/widget/ImageView;

    .line 51
    const v0, 0x7f090009

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/AppListStyleAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radioImg2:Landroid/widget/ImageView;

    .line 52
    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/AppListStyleAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radioImg3:Landroid/widget/ImageView;

    .line 54
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radioImg1:Landroid/widget/ImageView;

    const-string v1, "#959595"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 55
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radioImg2:Landroid/widget/ImageView;

    const-string v1, "#959595"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 56
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radioImg3:Landroid/widget/ImageView;

    const-string v1, "#959595"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 58
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radioImg1:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radioImg2:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radioImg3:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/AppSetting;->getThemeAppList()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 74
    :goto_0
    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/AppListStyleAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->mFirstTitle:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->mFirstTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0120

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/AppListStyleAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->mFirstTitle:Landroid/widget/TextView;

    new-instance v1, Lcom/lx/launcher8/setting/AppListStyleAct$1;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/AppListStyleAct$1;-><init>(Lcom/lx/launcher8/setting/AppListStyleAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void

    .line 64
    :pswitch_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radio1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 67
    :pswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radio2:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 70
    :pswitch_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radio3:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 62
    nop

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

    .line 85
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radio1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 86
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radio2:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 87
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radio3:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 90
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 94
    if-nez p2, :cond_0

    .line 109
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 97
    :pswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radio1:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/AppListStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 98
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/cfg/AppSetting;->setThemeAppList(I)V

    goto :goto_0

    .line 101
    :pswitch_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radio2:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/AppListStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 102
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/cfg/AppSetting;->setThemeAppList(I)V

    goto :goto_0

    .line 105
    :pswitch_3
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radio3:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/AppListStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 106
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/cfg/AppSetting;->setThemeAppList(I)V

    goto :goto_0

    .line 95
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
    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 127
    :goto_0
    :pswitch_0
    return-void

    .line 115
    :pswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radio1:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/AppListStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 116
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/cfg/AppSetting;->setThemeAppList(I)V

    goto :goto_0

    .line 119
    :pswitch_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radio2:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/AppListStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 120
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/cfg/AppSetting;->setThemeAppList(I)V

    goto :goto_0

    .line 123
    :pswitch_3
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->radio3:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/AppListStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 124
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/cfg/AppSetting;->setThemeAppList(I)V

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x7f090007
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/AppListStyleAct;->setContentView(I)V

    .line 36
    new-instance v0, Lcom/lx/launcher8/cfg/AppSetting;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/cfg/AppSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/AppListStyleAct;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    .line 38
    invoke-direct {p0}, Lcom/lx/launcher8/setting/AppListStyleAct;->initView()V

    .line 39
    return-void
.end method
