.class public Lcom/lx/launcher8/MoreAct;
.super Lcom/lx/launcher8/NoSearchAct;
.source "MoreAct.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    return-void
.end method


# virtual methods
.method public exec()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 74
    invoke-static {p0}, Lcom/app/ads/config/AdGlobal;->isDisplay(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 75
    const v5, 0x7f09006d

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/MoreAct;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 76
    const v5, 0x7f09006e

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/MoreAct;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 77
    const v5, 0x7f09006f

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/MoreAct;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/lx/launcher8/MoreAct;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, str:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    const-string v6, " for Android v "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 83
    invoke-virtual {p0}, Lcom/lx/launcher8/MoreAct;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/lx/launcher8/MoreAct;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 81
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 86
    :goto_0
    const v5, 0x7f090076

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/MoreAct;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const-string v5, "servermsg"

    const-string v6, ""

    invoke-static {p0, v5, v6}, Lcom/app/common/utils/UPreference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, msg:Ljava/lang/String;
    const v5, 0x7f090075

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/MoreAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 90
    .local v2, tv:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 91
    new-instance v5, Lcom/lx/launcher8/task/GetAdsDifferentFrom;

    new-instance v6, Lcom/lx/launcher8/MoreAct$3;

    invoke-direct {v6, p0, v2}, Lcom/lx/launcher8/MoreAct$3;-><init>(Lcom/lx/launcher8/MoreAct;Landroid/widget/TextView;)V

    invoke-direct {v5, p0, v6}, Lcom/lx/launcher8/task/GetAdsDifferentFrom;-><init>(Landroid/app/Activity;Lcom/lx/launcher8/task/GetAdsDifferentFrom$OnDisplayAds;)V

    .line 98
    invoke-virtual {v5}, Lcom/lx/launcher8/task/GetAdsDifferentFrom;->exec()Z

    .line 101
    :goto_1
    const v5, 0x7f090104

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/MoreAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 102
    .local v3, wpAd:Landroid/widget/ImageView;
    const v5, 0x7f090105

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/MoreAct;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 103
    .local v4, wpClose:Landroid/widget/ImageView;
    invoke-static {}, Lcom/lx/launcher8/util/WpAdUtil;->getInstance()Lcom/lx/launcher8/util/WpAdUtil;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, p0, v3, v4, v6}, Lcom/lx/launcher8/util/WpAdUtil;->showAd(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    .line 104
    return-void

    .line 99
    .end local v3           #wpAd:Landroid/widget/ImageView;
    .end local v4           #wpClose:Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 84
    .end local v0           #msg:Ljava/lang/String;
    .end local v2           #tv:Landroid/widget/TextView;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 109
    :sswitch_0
    new-instance v5, Lcom/lx/launcher8/task/CheckUpdateTask;

    invoke-static {}, Lcom/app/common/config/BaseGlobal;->getSoftId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v5, p0, v6, v7}, Lcom/lx/launcher8/task/CheckUpdateTask;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V

    invoke-virtual {v5}, Lcom/lx/launcher8/task/CheckUpdateTask;->exec()Z

    .line 110
    invoke-static {}, Lcom/lx/launcher8/util/WpAdUtil;->getInstance()Lcom/lx/launcher8/util/WpAdUtil;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/lx/launcher8/util/WpAdUtil;->loadAd(Landroid/content/Context;)V

    goto :goto_0

    .line 113
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/lx/launcher8/ProposeAct;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/MoreAct;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 117
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/app/ads/AdsAct;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v1, intent2:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/lx/launcher8/MoreAct;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 121
    .end local v1           #intent2:Landroid/content/Intent;
    :sswitch_3
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/lx/launcher8/AboutAct;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v2, intent3:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/MoreAct;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 125
    .end local v2           #intent3:Landroid/content/Intent;
    :sswitch_4
    const-string v5, "http://bbs.anall.cn"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 126
    .local v4, uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 127
    .local v3, intent4:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/lx/launcher8/MoreAct;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 130
    .end local v3           #intent4:Landroid/content/Intent;
    .end local v4           #uri:Landroid/net/Uri;
    :sswitch_5
    invoke-static {p0}, Lcom/lx/launcher8/util/Utils;->checkLauncherIsDefault(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 131
    invoke-static {p0}, Lcom/lx/launcher8/util/Utils;->setDefaultLauncher(Landroid/content/Context;)V

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const/high16 v5, 0x1000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/MoreAct;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 140
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/lx/launcher8/setting/wp8/ShareAct;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/MoreAct;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 107
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090004 -> :sswitch_4
        0x7f09006d -> :sswitch_2
        0x7f090070 -> :sswitch_0
        0x7f090071 -> :sswitch_1
        0x7f090072 -> :sswitch_3
        0x7f090073 -> :sswitch_6
        0x7f090074 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v3, 0x7f030012

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/MoreAct;->setContentView(I)V

    .line 35
    const v3, 0x7f090077

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/MoreAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 36
    .local v0, anall:Landroid/widget/TextView;
    const-string v3, "www.anall.cn"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    const v3, -0xff9749

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFlags(I)V

    .line 39
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 40
    new-instance v3, Lcom/lx/launcher8/MoreAct$1;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/MoreAct$1;-><init>(Lcom/lx/launcher8/MoreAct;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    :try_start_0
    new-instance v3, Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/lx/launcher8/cfg/DeskSetting;->getVersion()I

    move-result v3

    invoke-virtual {p0}, Lcom/lx/launcher8/MoreAct;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lx/launcher8/MoreAct;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v3, v4, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/lx/launcher8/MoreAct;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02017d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 56
    .local v1, drawableLeft:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 57
    invoke-virtual {p0}, Lcom/lx/launcher8/MoreAct;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020179

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 58
    .local v2, drawableRight:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 59
    const v3, 0x7f090070

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/MoreAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v2, v5}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1           #drawableLeft:Landroid/graphics/drawable/Drawable;
    .end local v2           #drawableRight:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    const v3, 0x7f090006

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/MoreAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/lx/launcher8/MoreAct$2;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/MoreAct$2;-><init>(Lcom/lx/launcher8/MoreAct;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/lx/launcher8/MoreAct;->exec()V

    .line 71
    return-void

    .line 61
    :catch_0
    move-exception v3

    goto :goto_0
.end method
