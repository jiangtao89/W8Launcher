.class public Lcom/anall/statusbar/BarService;
.super Landroid/app/Service;
.source "BarService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anall/statusbar/BarService$MeasureView;
    }
.end annotation


# static fields
.field public static final ACTION_ACTIVITY_ENTER:Ljava/lang/String; = "com.anall.activity.launcher"

.field public static final ACTION_ACTIVITY_EXIT:Ljava/lang/String; = "com.anall.launcher.activity.changed"

.field public static final ACTION_SET_CHANGED:Ljava/lang/String; = "com.anall.launcher.settings.changed"

.field public static final ACTION_STATEBAR_ADJUST:Ljava/lang/String; = "com.anall.launcher.statusbar.adjust"

.field public static final ACTION_STATEBAR_HIDE:Ljava/lang/String; = "com.anall.launcher.statusbar.hide"

.field public static final ACTION_STATEBAR_SHOW:Ljava/lang/String; = "com.anall.launcher.statusbar.show"

.field public static final EXTRAL_LOCK_COUNT:Ljava/lang/String; = "act_extra"

.field static final FLAG_GLOBAL_REQUEST:I = 0x80

.field static final FLAG_IGNORE_SYSBAR:I = 0x100

.field static final FLAG_LAUNCH_LOCK:I = 0x2

.field static final FLAG_LAUNCH_MAIN:I = 0x1

.field static final FLAG_LAUNCH_WP8:I = 0x4

.field static final FLAG_LOCK_REQUEST:I = 0x20

.field static final FLAG_SYSBAR_SHOW:I = 0x8

.field static final FLAG_WP8_REQUEST:I = 0x40

.field public static INSTANCE:Lcom/anall/statusbar/BarService; = null

.field static final MSG_ACTIVITY_ENTER:I = 0x7

.field static final MSG_ACTIVITY_EXIT:I = 0x6

.field static final MSG_DELAY:J = 0xfaL

.field static final MSG_STOP_SELF:I = 0x1

.field static final MSG_SYSBAR_CHANGE:I = 0x8

.field static final MSG_WP8_ADJUST:I = 0x4

.field static final MSG_WP8_CHANGE:I = 0x5

.field static final MSG_WP8_HIDE:I = 0x3

.field static final MSG_WP8_SHOW:I = 0x2

.field public static isRunning:Z


# instance fields
.field private hideShow:Landroid/content/BroadcastReceiver;

.field private mBarHeight:I

.field private mContext:Landroid/content/Context;

.field private mFlags:I

.field private mNotification:Landroid/view/WindowManager$LayoutParams;

.field private mNotificationView:Lcom/anall/statusbar/NotificationView;

.field mStateHandler:Landroid/os/Handler;

.field private mWindowManager:Landroid/view/WindowManager;

.field private measureView:Lcom/anall/statusbar/BarService$MeasureView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 96
    new-instance v0, Lcom/anall/statusbar/BarService$1;

    invoke-direct {v0, p0}, Lcom/anall/statusbar/BarService$1;-><init>(Lcom/anall/statusbar/BarService;)V

    iput-object v0, p0, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    .line 183
    new-instance v0, Lcom/anall/statusbar/BarService$2;

    invoke-direct {v0, p0}, Lcom/anall/statusbar/BarService$2;-><init>(Lcom/anall/statusbar/BarService;)V

    iput-object v0, p0, Lcom/anall/statusbar/BarService;->hideShow:Landroid/content/BroadcastReceiver;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/anall/statusbar/BarService;)Lcom/anall/statusbar/NotificationView;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/anall/statusbar/BarService;->mNotificationView:Lcom/anall/statusbar/NotificationView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/anall/statusbar/BarService;)Landroid/view/WindowManager;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/anall/statusbar/BarService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/anall/statusbar/BarService;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/anall/statusbar/BarService;->mNotification:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$3(Lcom/anall/statusbar/BarService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/anall/statusbar/BarService;->adjustShowStatusbar(Z)V

    return-void
.end method

.method static synthetic access$4(Lcom/anall/statusbar/BarService;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-direct {p0, p1, p2}, Lcom/anall/statusbar/BarService;->setFlag(II)V

    return-void
.end method

.method static synthetic access$5(Lcom/anall/statusbar/BarService;)I
    .locals 1
    .parameter

    .prologue
    .line 90
    iget v0, p0, Lcom/anall/statusbar/BarService;->mFlags:I

    return v0
.end method

.method private adjustShowStatusbar(Z)V
    .locals 10
    .parameter "delay"

    .prologue
    const/4 v7, 0x3

    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 332
    const/16 v8, 0x100

    invoke-direct {p0, v6, v8}, Lcom/anall/statusbar/BarService;->setFlag(II)V

    .line 333
    iget v8, p0, Lcom/anall/statusbar/BarService;->mFlags:I

    and-int/lit8 v8, v8, 0x44

    const/16 v9, 0x44

    if-ne v8, v9, :cond_2

    .line 334
    iget v8, p0, Lcom/anall/statusbar/BarService;->mFlags:I

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_2

    move v4, v5

    .line 335
    .local v4, wp8Show:Z
    :goto_0
    iget v8, p0, Lcom/anall/statusbar/BarService;->mFlags:I

    and-int/lit8 v8, v8, 0x22

    const/16 v9, 0x22

    if-ne v8, v9, :cond_3

    move v0, v5

    .line 337
    .local v0, lockShow:Z
    :goto_1
    iget v8, p0, Lcom/anall/statusbar/BarService;->mFlags:I

    and-int/lit16 v8, v8, 0xc8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_4

    .line 338
    iget v8, p0, Lcom/anall/statusbar/BarService;->mFlags:I

    and-int/lit8 v8, v8, 0x4

    if-nez v8, :cond_4

    move v2, v5

    .line 339
    .local v2, otherShow:Z
    :goto_2
    if-nez v4, :cond_5

    if-nez v0, :cond_5

    if-nez v2, :cond_5

    move v3, v6

    .line 341
    .local v3, show:Z
    :goto_3
    iget-object v5, p0, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 342
    iget-object v5, p0, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 344
    :cond_0
    iget-object v5, p0, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 345
    iget-object v5, p0, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 347
    :cond_1
    if-eqz v3, :cond_6

    .line 348
    .local v1, msg:I
    :goto_4
    iget-object v7, p0, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    if-eqz p1, :cond_7

    const-wide/16 v5, 0xfa

    :goto_5
    invoke-virtual {v7, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 349
    return-void

    .end local v0           #lockShow:Z
    .end local v1           #msg:I
    .end local v2           #otherShow:Z
    .end local v3           #show:Z
    .end local v4           #wp8Show:Z
    :cond_2
    move v4, v6

    .line 334
    goto :goto_0

    .restart local v4       #wp8Show:Z
    :cond_3
    move v0, v6

    .line 335
    goto :goto_1

    .restart local v0       #lockShow:Z
    :cond_4
    move v2, v6

    .line 338
    goto :goto_2

    .restart local v2       #otherShow:Z
    :cond_5
    move v3, v5

    .line 339
    goto :goto_3

    .restart local v3       #show:Z
    :cond_6
    move v1, v7

    .line 347
    goto :goto_4

    .line 348
    .restart local v1       #msg:I
    :cond_7
    const-wide/16 v5, 0x0

    goto :goto_5
.end method

.method private createStatusbar()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 352
    iget-object v2, p0, Lcom/anall/statusbar/BarService;->mWindowManager:Landroid/view/WindowManager;

    if-nez v2, :cond_0

    .line 353
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/anall/statusbar/BarService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/anall/statusbar/BarService;->mWindowManager:Landroid/view/WindowManager;

    .line 355
    :cond_0
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 356
    .local v1, measureLP:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7d6

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 357
    const/16 v2, 0x35

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 358
    const/16 v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 359
    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 360
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 361
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 362
    new-instance v2, Lcom/anall/statusbar/BarService$MeasureView;

    iget-object v3, p0, Lcom/anall/statusbar/BarService;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/anall/statusbar/BarService$MeasureView;-><init>(Lcom/anall/statusbar/BarService;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/anall/statusbar/BarService;->measureView:Lcom/anall/statusbar/BarService$MeasureView;

    .line 363
    iget-object v2, p0, Lcom/anall/statusbar/BarService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/anall/statusbar/BarService;->measureView:Lcom/anall/statusbar/BarService$MeasureView;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    iget-object v2, p0, Lcom/anall/statusbar/BarService;->mNotificationView:Lcom/anall/statusbar/NotificationView;

    if-nez v2, :cond_1

    .line 366
    new-instance v2, Lcom/anall/statusbar/NotificationView;

    iget-object v3, p0, Lcom/anall/statusbar/BarService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/anall/statusbar/NotificationView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/anall/statusbar/BarService;->mNotificationView:Lcom/anall/statusbar/NotificationView;

    .line 367
    const/high16 v2, 0x4140

    invoke-static {p0, v2}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 368
    .local v0, margin:I
    iget-object v2, p0, Lcom/anall/statusbar/BarService;->mNotificationView:Lcom/anall/statusbar/NotificationView;

    invoke-virtual {v2, v0, v6, v0, v6}, Lcom/anall/statusbar/NotificationView;->setPadding(IIII)V

    .line 370
    .end local v0           #margin:I
    :cond_1
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lcom/anall/statusbar/BarService;->mNotification:Landroid/view/WindowManager$LayoutParams;

    .line 371
    iget-object v2, p0, Lcom/anall/statusbar/BarService;->mNotification:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 372
    iget-object v2, p0, Lcom/anall/statusbar/BarService;->mNotification:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/anall/statusbar/BarService;->mBarHeight:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 373
    iget-object v2, p0, Lcom/anall/statusbar/BarService;->mNotification:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 374
    iget-object v2, p0, Lcom/anall/statusbar/BarService;->mNotification:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7da

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 377
    iget-object v2, p0, Lcom/anall/statusbar/BarService;->mNotification:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x9108

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 381
    iget-object v2, p0, Lcom/anall/statusbar/BarService;->mNotification:Landroid/view/WindowManager$LayoutParams;

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 382
    iget-object v2, p0, Lcom/anall/statusbar/BarService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/anall/statusbar/BarService;->mNotificationView:Lcom/anall/statusbar/NotificationView;

    iget-object v4, p0, Lcom/anall/statusbar/BarService;->mNotification:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    return-void
.end method

.method private handleStart(Landroid/content/Intent;I)V
    .locals 9
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/16 v6, 0x40

    const/16 v4, 0x20

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v5, 0x0

    .line 284
    if-nez p1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    const/4 v1, 0x0

    .line 286
    .local v1, needAdjust:Z
    const-string v3, "LockStatusBar"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 287
    const-string v3, "LockStatusBar"

    invoke-virtual {p1, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 288
    .local v0, has:Z
    if-eqz v0, :cond_7

    move v3, v4

    :goto_1
    invoke-direct {p0, v3, v4}, Lcom/anall/statusbar/BarService;->setFlag(II)V

    .line 289
    const/4 v1, 0x1

    .line 291
    .end local v0           #has:Z
    :cond_2
    const-string v3, "ThemeStatusBar"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 292
    const-string v3, "ThemeStatusBar"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 293
    .local v2, state:I
    if-ne v2, v8, :cond_8

    move v3, v6

    :goto_2
    invoke-direct {p0, v3, v6}, Lcom/anall/statusbar/BarService;->setFlag(II)V

    .line 294
    if-ne v2, v8, :cond_9

    move v3, v7

    :goto_3
    invoke-direct {p0, v3, v7}, Lcom/anall/statusbar/BarService;->setFlag(II)V

    .line 295
    const/4 v1, 0x1

    .line 297
    .end local v2           #state:I
    :cond_3
    const-string v3, "StatusDisplayRange"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 298
    const-string v3, "StatusDisplayRange"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 299
    .restart local v0       #has:Z
    if-eqz v0, :cond_4

    const/16 v5, 0x80

    :cond_4
    const/16 v3, 0x80

    invoke-direct {p0, v5, v3}, Lcom/anall/statusbar/BarService;->setFlag(II)V

    .line 300
    const/4 v1, 0x1

    .line 302
    .end local v0           #has:Z
    :cond_5
    if-eqz v1, :cond_0

    .line 303
    iget-object v3, p0, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 304
    iget-object v3, p0, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 306
    :cond_6
    iget-object v3, p0, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .restart local v0       #has:Z
    :cond_7
    move v3, v5

    .line 288
    goto :goto_1

    .end local v0           #has:Z
    .restart local v2       #state:I
    :cond_8
    move v3, v5

    .line 293
    goto :goto_2

    :cond_9
    move v3, v5

    .line 294
    goto :goto_3
.end method

.method private setFlag(II)V
    .locals 8
    .parameter "value"
    .parameter "mask"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 167
    iget v4, p0, Lcom/anall/statusbar/BarService;->mFlags:I

    xor-int/lit8 v5, p2, -0x1

    and-int/2addr v4, v5

    and-int v5, p1, p2

    or-int/2addr v4, v5

    iput v4, p0, Lcom/anall/statusbar/BarService;->mFlags:I

    .line 169
    iget-object v4, p0, Lcom/anall/statusbar/BarService;->mNotificationView:Lcom/anall/statusbar/NotificationView;

    if-eqz v4, :cond_1

    if-eq p2, v7, :cond_0

    if-eq p2, v6, :cond_0

    .line 170
    const/16 v4, 0x8

    if-ne p2, v4, :cond_1

    .line 171
    :cond_0
    iget v4, p0, Lcom/anall/statusbar/BarService;->mFlags:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_2

    move v1, v2

    .line 172
    .local v1, isWP8:Z
    :goto_0
    iget v4, p0, Lcom/anall/statusbar/BarService;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_3

    move v0, v2

    .line 173
    .local v0, isLock:Z
    :goto_1
    iget-object v4, p0, Lcom/anall/statusbar/BarService;->mNotificationView:Lcom/anall/statusbar/NotificationView;

    if-nez v1, :cond_4

    if-nez v0, :cond_4

    :goto_2
    invoke-virtual {v4, v3, v0}, Lcom/anall/statusbar/NotificationView;->transfiguration(ZZ)V

    .line 175
    .end local v0           #isLock:Z
    .end local v1           #isWP8:Z
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 171
    goto :goto_0

    .restart local v1       #isWP8:Z
    :cond_3
    move v0, v3

    .line 172
    goto :goto_1

    .restart local v0       #isLock:Z
    :cond_4
    move v3, v2

    .line 173
    goto :goto_2
.end method


# virtual methods
.method public addNotification(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1
    .parameter "d"
    .parameter "pkg"

    .prologue
    .line 178
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/anall/statusbar/BarService;->mNotificationView:Lcom/anall/statusbar/NotificationView;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/anall/statusbar/BarService;->mNotificationView:Lcom/anall/statusbar/NotificationView;

    invoke-virtual {v0, p1, p2}, Lcom/anall/statusbar/NotificationView;->addNotification(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 181
    :cond_0
    return-void
.end method

.method dumpMsg(I)Ljava/lang/String;
    .locals 2
    .parameter "msgId"

    .prologue
    .line 415
    packed-switch p1, :pswitch_data_0

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unkown "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 417
    :pswitch_0
    const-string v0, "MSG_ACTIVITY_CHANGE"

    goto :goto_0

    .line 421
    :pswitch_1
    const-string v0, "MSG_STOP_SELF"

    goto :goto_0

    .line 423
    :pswitch_2
    const-string v0, "MSG_SYSBAR_CHANGE"

    goto :goto_0

    .line 427
    :pswitch_3
    const-string v0, "MSG_WP8_CHANGE"

    goto :goto_0

    .line 429
    :pswitch_4
    const-string v0, "MSG_WP8_HIDE"

    goto :goto_0

    .line 431
    :pswitch_5
    const-string v0, "MSG_WP8_LAUNCH"

    goto :goto_0

    .line 433
    :pswitch_6
    const-string v0, "MSG_WP8_SHOW"

    goto :goto_0

    .line 435
    :pswitch_7
    const-string v0, "MSG_WP8_ADJUST"

    goto :goto_0

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 227
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 14

    .prologue
    const/16 v8, 0x80

    const/16 v9, 0x40

    const/16 v6, 0x20

    const/4 v13, 0x1

    const/4 v7, 0x0

    .line 232
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 233
    iput-object p0, p0, Lcom/anall/statusbar/BarService;->mContext:Landroid/content/Context;

    .line 234
    sput-boolean v13, Lcom/anall/statusbar/BarService;->isRunning:Z

    .line 235
    sput-object p0, Lcom/anall/statusbar/BarService;->INSTANCE:Lcom/anall/statusbar/BarService;

    .line 236
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const-string v10, "status_bar_height"

    .line 237
    const-string v11, "dimen"

    const-string v12, "android"

    .line 236
    invoke-virtual {v5, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 238
    .local v1, heightId:I
    if-nez v1, :cond_1

    .line 239
    const/high16 v5, 0x4220

    invoke-static {p0, v5}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p0, Lcom/anall/statusbar/BarService;->mBarHeight:I

    .line 245
    :goto_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 246
    .local v3, mIntentFilter:Landroid/content/IntentFilter;
    const-string v5, "com.anall.launcher.statusbar.hide"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    const-string v5, "com.anall.launcher.statusbar.show"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v5, "com.anall.launcher.statusbar.adjust"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string v5, "com.anall.launcher.settings.changed"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v5, "com.anall.launcher.activity.changed"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v5, "com.anall.activity.launcher"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    iget-object v5, p0, Lcom/anall/statusbar/BarService;->hideShow:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v3}, Lcom/anall/statusbar/BarService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 261
    invoke-direct {p0}, Lcom/anall/statusbar/BarService;->createStatusbar()V

    .line 264
    new-instance v2, Lcom/anall/screenlock/provider/LockSetting;

    invoke-direct {v2, p0}, Lcom/anall/screenlock/provider/LockSetting;-><init>(Landroid/content/Context;)V

    .line 265
    .local v2, ls:Lcom/anall/screenlock/provider/LockSetting;
    invoke-virtual {v2}, Lcom/anall/screenlock/provider/LockSetting;->getLockStatusBar()I

    move-result v5

    if-ne v5, v13, :cond_2

    move v5, v6

    :goto_1
    invoke-direct {p0, v5, v6}, Lcom/anall/statusbar/BarService;->setFlag(II)V

    .line 266
    new-instance v0, Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    .line 267
    .local v0, ds:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getStatusDispaly()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v8

    :goto_2
    invoke-direct {p0, v5, v8}, Lcom/anall/statusbar/BarService;->setFlag(II)V

    .line 268
    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeStatusBar()I

    move-result v4

    .line 269
    .local v4, stateValue:I
    if-ne v4, v13, :cond_0

    move v7, v9

    :cond_0
    invoke-direct {p0, v7, v9}, Lcom/anall/statusbar/BarService;->setFlag(II)V

    .line 273
    return-void

    .line 241
    .end local v0           #ds:Lcom/lx/launcher8/cfg/DeskSetting;
    .end local v2           #ls:Lcom/anall/screenlock/provider/LockSetting;
    .end local v3           #mIntentFilter:Landroid/content/IntentFilter;
    .end local v4           #stateValue:I
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/anall/statusbar/BarService;->mBarHeight:I

    goto :goto_0

    .restart local v2       #ls:Lcom/anall/screenlock/provider/LockSetting;
    .restart local v3       #mIntentFilter:Landroid/content/IntentFilter;
    :cond_2
    move v5, v7

    .line 265
    goto :goto_1

    .restart local v0       #ds:Lcom/lx/launcher8/cfg/DeskSetting;
    :cond_3
    move v5, v7

    .line 267
    goto :goto_2
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 312
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 313
    const/4 v0, 0x0

    sput-boolean v0, Lcom/anall/statusbar/BarService;->isRunning:Z

    .line 314
    sput-object v2, Lcom/anall/statusbar/BarService;->INSTANCE:Lcom/anall/statusbar/BarService;

    .line 315
    iget-object v0, p0, Lcom/anall/statusbar/BarService;->hideShow:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/anall/statusbar/BarService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 320
    iget-object v0, p0, Lcom/anall/statusbar/BarService;->measureView:Lcom/anall/statusbar/BarService$MeasureView;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/anall/statusbar/BarService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/anall/statusbar/BarService;->measureView:Lcom/anall/statusbar/BarService$MeasureView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 322
    iput-object v2, p0, Lcom/anall/statusbar/BarService;->measureView:Lcom/anall/statusbar/BarService$MeasureView;

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/anall/statusbar/BarService;->mNotificationView:Lcom/anall/statusbar/NotificationView;

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/anall/statusbar/BarService;->mNotificationView:Lcom/anall/statusbar/NotificationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/anall/statusbar/NotificationView;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/anall/statusbar/BarService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/anall/statusbar/BarService;->mNotificationView:Lcom/anall/statusbar/NotificationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 327
    iput-object v2, p0, Lcom/anall/statusbar/BarService;->mNotificationView:Lcom/anall/statusbar/NotificationView;

    .line 329
    :cond_1
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 276
    invoke-direct {p0, p1, p2}, Lcom/anall/statusbar/BarService;->handleStart(Landroid/content/Intent;I)V

    .line 277
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 280
    invoke-direct {p0, p1, p3}, Lcom/anall/statusbar/BarService;->handleStart(Landroid/content/Intent;I)V

    .line 281
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
