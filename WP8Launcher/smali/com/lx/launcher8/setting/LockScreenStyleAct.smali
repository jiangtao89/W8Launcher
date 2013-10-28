.class public Lcom/lx/launcher8/setting/LockScreenStyleAct;
.super Lcom/lx/launcher8/NoSearchAct;
.source "LockScreenStyleAct.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mFirstTitle:Landroid/widget/TextView;

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

    .line 17
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio1:Landroid/widget/RadioButton;

    .line 20
    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio2:Landroid/widget/RadioButton;

    .line 21
    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio3:Landroid/widget/RadioButton;

    .line 22
    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio4:Landroid/widget/RadioButton;

    .line 23
    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio5:Landroid/widget/RadioButton;

    .line 25
    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radioImg1:Landroid/widget/ImageView;

    .line 26
    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radioImg2:Landroid/widget/ImageView;

    .line 27
    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radioImg3:Landroid/widget/ImageView;

    .line 28
    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radioImg4:Landroid/widget/ImageView;

    .line 29
    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radioImg5:Landroid/widget/ImageView;

    .line 31
    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->settings:Lcom/anall/screenlock/provider/LockSetting;

    .line 17
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 46
    const v0, 0x7f090008

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/LockScreenStyleAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio1:Landroid/widget/RadioButton;

    .line 47
    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/LockScreenStyleAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio2:Landroid/widget/RadioButton;

    .line 48
    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/LockScreenStyleAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio3:Landroid/widget/RadioButton;

    .line 49
    const v0, 0x7f09000e

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/LockScreenStyleAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio4:Landroid/widget/RadioButton;

    .line 50
    const v0, 0x7f09006a

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/LockScreenStyleAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio5:Landroid/widget/RadioButton;

    .line 52
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio1:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 53
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio2:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 54
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio3:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 55
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio4:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 56
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio5:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 58
    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/LockScreenStyleAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radioImg1:Landroid/widget/ImageView;

    .line 59
    const v0, 0x7f090009

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/LockScreenStyleAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radioImg2:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/LockScreenStyleAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radioImg3:Landroid/widget/ImageView;

    .line 61
    const v0, 0x7f09000d

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/LockScreenStyleAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radioImg4:Landroid/widget/ImageView;

    .line 62
    const v0, 0x7f090069

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/LockScreenStyleAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radioImg5:Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radioImg1:Landroid/widget/ImageView;

    const-string v1, "#959595"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 65
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radioImg2:Landroid/widget/ImageView;

    const-string v1, "#959595"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 66
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radioImg3:Landroid/widget/ImageView;

    const-string v1, "#959595"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 67
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radioImg4:Landroid/widget/ImageView;

    const-string v1, "#959595"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 68
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radioImg5:Landroid/widget/ImageView;

    const-string v1, "#959595"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 70
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radioImg1:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radioImg2:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radioImg3:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radioImg4:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radioImg5:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->settings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v0}, Lcom/anall/screenlock/provider/LockSetting;->getLockTheme()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 94
    :goto_0
    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/LockScreenStyleAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->mFirstTitle:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->mFirstTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0136

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/LockScreenStyleAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->mFirstTitle:Landroid/widget/TextView;

    new-instance v1, Lcom/lx/launcher8/setting/LockScreenStyleAct$1;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/LockScreenStyleAct$1;-><init>(Lcom/lx/launcher8/setting/LockScreenStyleAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 81
    :pswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio2:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 84
    :pswitch_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio3:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 87
    :pswitch_3
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio4:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 90
    :pswitch_4
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio5:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 76
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

    .line 105
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 106
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio2:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 107
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio3:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 108
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio4:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 109
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio5:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 111
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 112
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 116
    if-nez p2, :cond_0

    .line 139
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 119
    :sswitch_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio1:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/LockScreenStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 120
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->settings:Lcom/anall/screenlock/provider/LockSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anall/screenlock/provider/LockSetting;->setLockTheme(I)V

    goto :goto_0

    .line 123
    :sswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio2:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/LockScreenStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 124
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->settings:Lcom/anall/screenlock/provider/LockSetting;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/anall/screenlock/provider/LockSetting;->setLockTheme(I)V

    goto :goto_0

    .line 127
    :sswitch_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio3:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/LockScreenStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 128
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->settings:Lcom/anall/screenlock/provider/LockSetting;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/anall/screenlock/provider/LockSetting;->setLockTheme(I)V

    goto :goto_0

    .line 131
    :sswitch_3
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio4:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/LockScreenStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 132
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->settings:Lcom/anall/screenlock/provider/LockSetting;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/anall/screenlock/provider/LockSetting;->setLockTheme(I)V

    goto :goto_0

    .line 135
    :sswitch_4
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio5:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/LockScreenStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 136
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->settings:Lcom/anall/screenlock/provider/LockSetting;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/anall/screenlock/provider/LockSetting;->setLockTheme(I)V

    goto :goto_0

    .line 117
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
    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 145
    :sswitch_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio1:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/LockScreenStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 146
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->settings:Lcom/anall/screenlock/provider/LockSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anall/screenlock/provider/LockSetting;->setLockTheme(I)V

    goto :goto_0

    .line 149
    :sswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio2:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/LockScreenStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 150
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->settings:Lcom/anall/screenlock/provider/LockSetting;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/anall/screenlock/provider/LockSetting;->setLockTheme(I)V

    goto :goto_0

    .line 153
    :sswitch_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio3:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/LockScreenStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 154
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->settings:Lcom/anall/screenlock/provider/LockSetting;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/anall/screenlock/provider/LockSetting;->setLockTheme(I)V

    goto :goto_0

    .line 157
    :sswitch_3
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio4:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/LockScreenStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 158
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->settings:Lcom/anall/screenlock/provider/LockSetting;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/anall/screenlock/provider/LockSetting;->setLockTheme(I)V

    goto :goto_0

    .line 161
    :sswitch_4
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->radio5:Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/LockScreenStyleAct;->onChecked(Landroid/widget/RadioButton;)V

    .line 162
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->settings:Lcom/anall/screenlock/provider/LockSetting;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/anall/screenlock/provider/LockSetting;->setLockTheme(I)V

    goto :goto_0

    .line 143
    :sswitch_data_0
    .sparse-switch
        0x7f090007 -> :sswitch_0
        0x7f090009 -> :sswitch_1
        0x7f09000b -> :sswitch_2
        0x7f09000d -> :sswitch_3
        0x7f090069 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/LockScreenStyleAct;->setContentView(I)V

    .line 40
    new-instance v0, Lcom/anall/screenlock/provider/LockSetting;

    invoke-direct {v0, p0}, Lcom/anall/screenlock/provider/LockSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct;->settings:Lcom/anall/screenlock/provider/LockSetting;

    .line 42
    invoke-direct {p0}, Lcom/lx/launcher8/setting/LockScreenStyleAct;->initView()V

    .line 43
    return-void
.end method
