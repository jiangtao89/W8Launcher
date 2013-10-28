.class public Lcom/anall/statusbar/NotificationService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "NotificationService.java"


# static fields
.field static final MSG_DELEY_DISSPOP:I = 0x1

.field private static mInit:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDesk:Lcom/lx/launcher8/cfg/DeskSetting;

.field private mHander:Landroid/os/Handler;

.field private mPopView:Landroid/view/View;

.field private mWLayoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    .line 112
    new-instance v0, Lcom/anall/statusbar/NotificationService$1;

    invoke-direct {v0, p0}, Lcom/anall/statusbar/NotificationService$1;-><init>(Lcom/anall/statusbar/NotificationService;)V

    iput-object v0, p0, Lcom/anall/statusbar/NotificationService;->mHander:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/anall/statusbar/NotificationService;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/anall/statusbar/NotificationService;->dissPopWindow()V

    return-void
.end method

.method private addNitication(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1
    .parameter "d"
    .parameter "pkg"

    .prologue
    .line 123
    sget-object v0, Lcom/anall/statusbar/BarService;->INSTANCE:Lcom/anall/statusbar/BarService;

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lcom/anall/statusbar/BarService;->INSTANCE:Lcom/anall/statusbar/BarService;

    invoke-virtual {v0, p1, p2}, Lcom/anall/statusbar/BarService;->addNotification(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method

.method private dissPopWindow()V
    .locals 3

    .prologue
    .line 174
    iget-object v1, p0, Lcom/anall/statusbar/NotificationService;->mPopView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/anall/statusbar/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 176
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/anall/statusbar/NotificationService;->mPopView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 177
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/anall/statusbar/NotificationService;->mPopView:Landroid/view/View;

    .line 179
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method private getToastTime()I
    .locals 2

    .prologue
    .line 167
    iget-object v1, p0, Lcom/anall/statusbar/NotificationService;->mDesk:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getStatusTTime()I

    move-result v1

    mul-int/lit16 v0, v1, 0x3e8

    .line 168
    .local v0, time:I
    const/16 v1, 0x2710

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 169
    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 170
    return v0
.end method

.method public static isLaunching()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/anall/statusbar/NotificationService;->mInit:Z

    return v0
.end method

.method private setServiceInfo()V
    .locals 3

    .prologue
    .line 57
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    .line 58
    .local v0, asi:Landroid/accessibilityservice/AccessibilityServiceInfo;
    const/16 v1, 0x40

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 59
    const/16 v1, 0x8

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 60
    const/4 v1, 0x1

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 61
    const-wide/16 v1, 0x50

    iput-wide v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 62
    invoke-virtual {p0, v0}, Lcom/anall/statusbar/NotificationService;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 63
    return-void
.end method

.method private showPopWindow(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "d"
    .parameter "title"
    .parameter "content"
    .parameter "pi"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 129
    invoke-virtual {p0}, Lcom/anall/statusbar/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 130
    .local v1, wm:Landroid/view/WindowManager;
    iget-object v2, p0, Lcom/anall/statusbar/NotificationService;->mWLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v2, :cond_0

    .line 131
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lcom/anall/statusbar/NotificationService;->mWLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 132
    iget-object v2, p0, Lcom/anall/statusbar/NotificationService;->mWLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x108

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 134
    iget-object v2, p0, Lcom/anall/statusbar/NotificationService;->mWLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7da

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 135
    iget-object v2, p0, Lcom/anall/statusbar/NotificationService;->mWLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 136
    iget-object v2, p0, Lcom/anall/statusbar/NotificationService;->mWLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/anall/statusbar/NotificationService;->mContext:Landroid/content/Context;

    const/high16 v4, 0x4282

    invoke-static {v3, v4}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 137
    iget-object v2, p0, Lcom/anall/statusbar/NotificationService;->mWLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/anall/statusbar/NotificationService;->mPopView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/anall/statusbar/NotificationService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030076

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/anall/statusbar/NotificationService;->mPopView:Landroid/view/View;

    .line 141
    iget-object v2, p0, Lcom/anall/statusbar/NotificationService;->mPopView:Landroid/view/View;

    iget-object v3, p0, Lcom/anall/statusbar/NotificationService;->mWLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    iget-object v2, p0, Lcom/anall/statusbar/NotificationService;->mPopView:Landroid/view/View;

    new-instance v3, Lcom/anall/statusbar/NotificationService$2;

    invoke-direct {v3, p0}, Lcom/anall/statusbar/NotificationService$2;-><init>(Lcom/anall/statusbar/NotificationService;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/anall/statusbar/NotificationService;->mPopView:Landroid/view/View;

    invoke-virtual {v2, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 155
    iget-object v2, p0, Lcom/anall/statusbar/NotificationService;->mPopView:Landroid/view/View;

    iget-object v3, p0, Lcom/anall/statusbar/NotificationService;->mDesk:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v3}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 156
    iget-object v2, p0, Lcom/anall/statusbar/NotificationService;->mPopView:Landroid/view/View;

    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 157
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    iget-object v2, p0, Lcom/anall/statusbar/NotificationService;->mPopView:Landroid/view/View;

    const v3, 0x1020015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #tv:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 159
    .restart local v0       #tv:Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    iget-object v2, p0, Lcom/anall/statusbar/NotificationService;->mPopView:Landroid/view/View;

    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v2, p0, Lcom/anall/statusbar/NotificationService;->mPopView:Landroid/view/View;

    iget-object v3, p0, Lcom/anall/statusbar/NotificationService;->mWLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v2, p0, Lcom/anall/statusbar/NotificationService;->mHander:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 163
    iget-object v2, p0, Lcom/anall/statusbar/NotificationService;->mHander:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/anall/statusbar/NotificationService;->getToastTime()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 164
    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 12
    .parameter "event"

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    .line 75
    .local v3, eventType:I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v4

    .line 76
    .local v4, parcelable:Landroid/os/Parcelable;
    const/16 v10, 0x40

    if-ne v3, v10, :cond_0

    .line 77
    if-eqz v4, :cond_0

    move-object v8, v4

    .line 78
    check-cast v8, Landroid/app/Notification;

    .line 79
    .local v8, temp:Landroid/app/Notification;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, pkg:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 105
    .end local v5           #pkg:Ljava/lang/String;
    .end local v8           #temp:Landroid/app/Notification;
    :cond_0
    :goto_0
    return-void

    .line 81
    .restart local v5       #pkg:Ljava/lang/String;
    .restart local v8       #temp:Landroid/app/Notification;
    :cond_1
    invoke-static {p0}, Lcom/anall/statusbar/AppListen;->getInstance(Landroid/content/Context;)Lcom/anall/statusbar/AppListen;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/anall/statusbar/AppListen;->get(Ljava/lang/String;)I

    move-result v9

    .line 82
    .local v9, value:I
    if-eqz v9, :cond_0

    .line 83
    const/4 v2, 0x0

    .line 84
    .local v2, d:Landroid/graphics/drawable/Drawable;
    const-string v0, ""

    .line 86
    .local v0, appName:Ljava/lang/String;
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {p0, v5, v10}, Lcom/anall/statusbar/NotificationService;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 87
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 88
    .local v6, res:Landroid/content/res/Resources;
    iget v10, v8, Landroid/app/Notification;->icon:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 89
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 94
    .end local v1           #context:Landroid/content/Context;
    .end local v6           #res:Landroid/content/res/Resources;
    :goto_1
    invoke-static {p0}, Lcom/anall/statusbar/AppListen;->getInstance(Landroid/content/Context;)Lcom/anall/statusbar/AppListen;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/anall/statusbar/AppListen;->countNotice(Ljava/lang/String;)V

    .line 96
    iget-object v10, p0, Lcom/anall/statusbar/NotificationService;->mDesk:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v10}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeStatusBar()I

    move-result v7

    .line 97
    .local v7, statuStyle:I
    const/4 v10, 0x1

    if-eq v7, v10, :cond_2

    const/4 v10, 0x3

    if-ne v7, v10, :cond_0

    .line 98
    :cond_2
    and-int/lit8 v10, v9, 0x4

    if-eqz v10, :cond_3

    invoke-direct {p0, v2, v5}, Lcom/anall/statusbar/NotificationService;->addNitication(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 99
    :cond_3
    and-int/lit8 v10, v9, 0x2

    if-eqz v10, :cond_0

    .line 100
    iget-object v10, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v11, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, v2, v0, v10, v11}, Lcom/anall/statusbar/NotificationService;->showPopWindow(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 90
    .end local v7           #statuStyle:I
    :catch_0
    move-exception v10

    goto :goto_1
.end method

.method public onInterrupt()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/anall/statusbar/NotificationService;->dissPopWindow()V

    .line 110
    return-void
.end method

.method protected onServiceConnected()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    .line 48
    sget-boolean v0, Lcom/anall/statusbar/NotificationService;->mInit:Z

    if-eqz v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 50
    :cond_0
    iput-object p0, p0, Lcom/anall/statusbar/NotificationService;->mContext:Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Lcom/anall/statusbar/NotificationService;->setServiceInfo()V

    .line 52
    new-instance v0, Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anall/statusbar/NotificationService;->mDesk:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 53
    const/4 v0, 0x1

    sput-boolean v0, Lcom/anall/statusbar/NotificationService;->mInit:Z

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/anall/statusbar/NotificationService;->mInit:Z

    .line 68
    invoke-direct {p0}, Lcom/anall/statusbar/NotificationService;->dissPopWindow()V

    .line 69
    invoke-super {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
