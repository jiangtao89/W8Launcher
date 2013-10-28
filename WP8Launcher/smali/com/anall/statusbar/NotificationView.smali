.class public Lcom/anall/statusbar/NotificationView;
.super Landroid/view/ViewGroup;
.source "NotificationView.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field public static final AIRMODE:I = 0x14

.field public static final Alternative:I = -0x1

.field public static final BATTEY:I = 0x10

.field public static final BLUETOOTH:I = 0x17

.field public static final DISPLAY_VIEW:I = 0x1b

.field public static final GPS:I = 0x1c

.field public static final H3G:I = 0x12

.field public static final HEADSET:I = 0x13

.field public static final HIDE_VIEW:I = 0x1a

.field public static final NET_WORK_TYPE:I = 0x18

.field public static final SIGNAL:I = 0x11

.field private static final SNAP_VELOCITY:I = 0x12c

.field public static final TIME_CHANGED:I = 0x19

.field public static final VIBRATE:I = 0x16

.field public static final WIFI:I = 0x15


# instance fields
.field private animListener:Landroid/view/animation/Animation$AnimationListener;

.field private isBlack:Z

.field private isLock:Z

.field private isWP8:Z

.field private lac:Landroid/view/animation/LayoutAnimationController;

.field private mBattey:Landroid/widget/TextView;

.field private mBluetooth:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mDeskSetting:Lcom/lx/launcher8/cfg/DeskSetting;

.field private mGps:Landroid/widget/ImageView;

.field private mHeadset:Landroid/widget/ImageView;

.field private mImg3G:Landroid/widget/ImageView;

.field private mNoticeRecoders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPower:Landroid/widget/ImageView;

.field private mRootView:Landroid/view/View;

.field private mSdf:Ljava/text/SimpleDateFormat;

.field private mSignal:Landroid/widget/ImageView;

.field private mTime:Landroid/widget/TextView;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVibrator:Landroid/widget/ImageView;

.field private mWifi:Landroid/widget/ImageView;

.field private notifiMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private watchered:Lcom/anall/statusbar/NotificationDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 330
    new-instance v0, Lcom/anall/statusbar/NotificationView$1;

    invoke-direct {v0, p0}, Lcom/anall/statusbar/NotificationView$1;-><init>(Lcom/anall/statusbar/NotificationView;)V

    iput-object v0, p0, Lcom/anall/statusbar/NotificationView;->animListener:Landroid/view/animation/Animation$AnimationListener;

    .line 448
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anall/statusbar/NotificationView;->notifiMap:Ljava/util/HashMap;

    .line 680
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anall/statusbar/NotificationView;->isBlack:Z

    .line 67
    invoke-direct {p0}, Lcom/anall/statusbar/NotificationView;->initView()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 330
    new-instance v0, Lcom/anall/statusbar/NotificationView$1;

    invoke-direct {v0, p0}, Lcom/anall/statusbar/NotificationView$1;-><init>(Lcom/anall/statusbar/NotificationView;)V

    iput-object v0, p0, Lcom/anall/statusbar/NotificationView;->animListener:Landroid/view/animation/Animation$AnimationListener;

    .line 448
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anall/statusbar/NotificationView;->notifiMap:Ljava/util/HashMap;

    .line 680
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anall/statusbar/NotificationView;->isBlack:Z

    .line 72
    invoke-direct {p0}, Lcom/anall/statusbar/NotificationView;->initView()V

    .line 73
    return-void
.end method

.method static synthetic access$0(Lcom/anall/statusbar/NotificationView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/anall/statusbar/NotificationView;->mPower:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/anall/statusbar/NotificationView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/anall/statusbar/NotificationView;->mTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/anall/statusbar/NotificationView;)Lcom/anall/statusbar/NotificationDetector;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/anall/statusbar/NotificationView;->watchered:Lcom/anall/statusbar/NotificationDetector;

    return-object v0
.end method

.method private displayViews(I)V
    .locals 5
    .parameter "style"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 285
    if-nez p1, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/anall/statusbar/NotificationView;->initAction()V

    .line 288
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/anall/statusbar/NotificationView;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 296
    invoke-direct {p0, p0}, Lcom/anall/statusbar/NotificationView;->setNotificationAnimation(Landroid/view/ViewGroup;)V

    .line 297
    packed-switch p1, :pswitch_data_0

    .line 312
    :goto_1
    return-void

    .line 289
    :cond_1
    invoke-virtual {p0, v1}, Lcom/anall/statusbar/NotificationView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 290
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 291
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 292
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 288
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    .end local v0           #child:Landroid/view/View;
    :pswitch_0
    iget-object v2, p0, Lcom/anall/statusbar/NotificationView;->mPower:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    iget-object v2, p0, Lcom/anall/statusbar/NotificationView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 303
    :pswitch_1
    iget-object v2, p0, Lcom/anall/statusbar/NotificationView;->mPower:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    iget-object v2, p0, Lcom/anall/statusbar/NotificationView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 307
    :pswitch_2
    iget-object v2, p0, Lcom/anall/statusbar/NotificationView;->mPower:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    iget-object v2, p0, Lcom/anall/statusbar/NotificationView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private hideViews(I)V
    .locals 7
    .parameter "style"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    .line 355
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/anall/statusbar/NotificationView;->getChildCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 378
    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/anall/statusbar/NotificationView;->watchered:Lcom/anall/statusbar/NotificationDetector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/anall/statusbar/NotificationView;->watchered:Lcom/anall/statusbar/NotificationDetector;

    iget-boolean v3, v3, Lcom/anall/statusbar/NotificationDetector;->isObservered:Z

    if-eqz v3, :cond_0

    .line 379
    iget-object v3, p0, Lcom/anall/statusbar/NotificationView;->watchered:Lcom/anall/statusbar/NotificationDetector;

    invoke-virtual {v3, p0}, Lcom/anall/statusbar/NotificationDetector;->deleteObserver(Ljava/util/Observer;)V

    .line 381
    :cond_0
    return-void

    .line 356
    :cond_1
    iget-object v3, p0, Lcom/anall/statusbar/NotificationView;->mContext:Landroid/content/Context;

    .line 357
    const v4, 0x7f04000b

    .line 356
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 358
    .local v0, anim:Landroid/view/animation/Animation;
    mul-int/lit8 v3, v2, 0x32

    add-int/lit8 v3, v3, 0x64

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 359
    invoke-virtual {p0, v2}, Lcom/anall/statusbar/NotificationView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 360
    .local v1, child:Landroid/view/View;
    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    .line 361
    iget-object v3, p0, Lcom/anall/statusbar/NotificationView;->mTime:Landroid/widget/TextView;

    if-eq v1, v3, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 362
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 363
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 355
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 365
    :cond_3
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_4

    .line 366
    iget-object v3, p0, Lcom/anall/statusbar/NotificationView;->mTime:Landroid/widget/TextView;

    if-eq v1, v3, :cond_2

    iget-object v3, p0, Lcom/anall/statusbar/NotificationView;->mPower:Landroid/widget/ImageView;

    if-eq v1, v3, :cond_2

    .line 367
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 368
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 371
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 372
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 373
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private initAction()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/anall/statusbar/NotificationView;->watchered:Lcom/anall/statusbar/NotificationDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anall/statusbar/NotificationView;->watchered:Lcom/anall/statusbar/NotificationDetector;

    iget-boolean v0, v0, Lcom/anall/statusbar/NotificationDetector;->isObservered:Z

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/anall/statusbar/NotificationView;->watchered:Lcom/anall/statusbar/NotificationDetector;

    invoke-virtual {v0, p0}, Lcom/anall/statusbar/NotificationDetector;->addObserver(Ljava/util/Observer;)V

    .line 82
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy#MM#dd#HH:mm#ss"

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/anall/statusbar/NotificationView;->mSdf:Ljava/text/SimpleDateFormat;

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/anall/statusbar/NotificationView;->updateTime(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/16 v3, 0x8

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/anall/statusbar/NotificationView;->isWP8:Z

    .line 106
    invoke-virtual {p0}, Lcom/anall/statusbar/NotificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/anall/statusbar/NotificationView;->mContext:Landroid/content/Context;

    .line 107
    new-instance v1, Lcom/lx/launcher8/cfg/DeskSetting;

    iget-object v2, p0, Lcom/anall/statusbar/NotificationView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anall/statusbar/NotificationView;->mDeskSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 109
    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03005b

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 110
    invoke-virtual {p0}, Lcom/anall/statusbar/NotificationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 111
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 112
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 114
    .restart local v0       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 115
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 116
    invoke-virtual {p0, v0}, Lcom/anall/statusbar/NotificationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iput-object p0, p0, Lcom/anall/statusbar/NotificationView;->mRootView:Landroid/view/View;

    .line 119
    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->mRootView:Landroid/view/View;

    const v2, 0x7f090181

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anall/statusbar/NotificationView;->mVibrator:Landroid/widget/ImageView;

    .line 120
    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->mVibrator:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->mRootView:Landroid/view/View;

    const v2, 0x7f09017b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anall/statusbar/NotificationView;->mSignal:Landroid/widget/ImageView;

    .line 122
    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->mRootView:Landroid/view/View;

    const v2, 0x7f09017c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anall/statusbar/NotificationView;->mImg3G:Landroid/widget/ImageView;

    .line 124
    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->mImg3G:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->mRootView:Landroid/view/View;

    const v2, 0x7f09017d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anall/statusbar/NotificationView;->mWifi:Landroid/widget/ImageView;

    .line 126
    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->mRootView:Landroid/view/View;

    const v2, 0x7f090183

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anall/statusbar/NotificationView;->mPower:Landroid/widget/ImageView;

    .line 128
    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->mPower:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->mRootView:Landroid/view/View;

    const v2, 0x7f090182

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/anall/statusbar/NotificationView;->mBattey:Landroid/widget/TextView;

    .line 130
    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->mBattey:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->mRootView:Landroid/view/View;

    const v2, 0x7f090184

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/anall/statusbar/NotificationView;->mTime:Landroid/widget/TextView;

    .line 132
    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->mRootView:Landroid/view/View;

    .line 133
    const v2, 0x7f09017f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 132
    iput-object v1, p0, Lcom/anall/statusbar/NotificationView;->mHeadset:Landroid/widget/ImageView;

    .line 134
    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->mRootView:Landroid/view/View;

    .line 135
    const v2, 0x7f090180

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 134
    iput-object v1, p0, Lcom/anall/statusbar/NotificationView;->mBluetooth:Landroid/widget/ImageView;

    .line 136
    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->mRootView:Landroid/view/View;

    const v2, 0x7f09017e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anall/statusbar/NotificationView;->mGps:Landroid/widget/ImageView;

    .line 137
    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->mGps:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    invoke-direct {p0}, Lcom/anall/statusbar/NotificationView;->transfiguration()Z

    .line 140
    new-instance v1, Lcom/anall/statusbar/NotificationDetector;

    iget-object v2, p0, Lcom/anall/statusbar/NotificationView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/anall/statusbar/NotificationDetector;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anall/statusbar/NotificationView;->watchered:Lcom/anall/statusbar/NotificationDetector;

    .line 141
    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->watchered:Lcom/anall/statusbar/NotificationDetector;

    iget-object v2, p0, Lcom/anall/statusbar/NotificationView;->mDeskSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/DeskSetting;->getStatusHoldTime()I

    move-result v2

    iput v2, v1, Lcom/anall/statusbar/NotificationDetector;->mHideTime:I

    .line 142
    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->watchered:Lcom/anall/statusbar/NotificationDetector;

    invoke-virtual {v1, p0}, Lcom/anall/statusbar/NotificationDetector;->addObserver(Ljava/util/Observer;)V

    .line 143
    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->watchered:Lcom/anall/statusbar/NotificationDetector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/anall/statusbar/NotificationDetector;->autoHideNotification(Z)V

    .line 145
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/anall/statusbar/NotificationView;->mNoticeRecoders:Ljava/util/HashMap;

    .line 146
    return-void
.end method

.method private isDisplay()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/anall/statusbar/NotificationView;->mBattey:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setNotificationAnimation(Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 317
    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->mContext:Landroid/content/Context;

    .line 318
    const v2, 0x7f04000a

    .line 317
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 319
    .local v0, anim:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->mContext:Landroid/content/Context;

    .line 320
    const v2, 0x10a0008

    .line 319
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 321
    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v1, v0}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    iput-object v1, p0, Lcom/anall/statusbar/NotificationView;->lac:Landroid/view/animation/LayoutAnimationController;

    .line 322
    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->lac:Landroid/view/animation/LayoutAnimationController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/LayoutAnimationController;->setOrder(I)V

    .line 323
    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->lac:Landroid/view/animation/LayoutAnimationController;

    const v2, 0x3ecccccd

    invoke-virtual {v1, v2}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    .line 324
    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->lac:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 325
    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->animListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 326
    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->lac:Landroid/view/animation/LayoutAnimationController;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/LayoutAnimationController;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 327
    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->lac:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v1}, Landroid/view/animation/LayoutAnimationController;->start()V

    .line 328
    return-void
.end method

.method private transfiguration()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/high16 v5, -0x100

    const/4 v4, 0x0

    .line 714
    new-instance v1, Lcom/lx/launcher8/cfg/DeskSetting;

    iget-object v3, p0, Lcom/anall/statusbar/NotificationView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    .line 715
    .local v1, mDeskSettings:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v2

    .line 716
    .local v2, style:I
    iget-object v3, p0, Lcom/anall/statusbar/NotificationView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 717
    invoke-virtual {p0, v5}, Lcom/anall/statusbar/NotificationView;->setBackgroundColor(I)V

    .line 718
    iget-boolean v0, p0, Lcom/anall/statusbar/NotificationView;->isBlack:Z

    .line 719
    .local v0, bool:Z
    iget-boolean v3, p0, Lcom/anall/statusbar/NotificationView;->isWP8:Z

    if-eqz v3, :cond_4

    .line 720
    invoke-virtual {p0, v4}, Lcom/anall/statusbar/NotificationView;->setBackgroundColor(I)V

    .line 721
    if-nez v2, :cond_2

    .line 722
    iput-boolean v7, p0, Lcom/anall/statusbar/NotificationView;->isBlack:Z

    .line 723
    iget-object v3, p0, Lcom/anall/statusbar/NotificationView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 730
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/anall/statusbar/NotificationView;->isLock:Z

    if-eqz v3, :cond_1

    .line 731
    iput-boolean v4, p0, Lcom/anall/statusbar/NotificationView;->isBlack:Z

    .line 732
    iget-object v3, p0, Lcom/anall/statusbar/NotificationView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 733
    invoke-virtual {p0, v4}, Lcom/anall/statusbar/NotificationView;->setBackgroundColor(I)V

    .line 738
    :cond_1
    :goto_1
    return v0

    .line 724
    :cond_2
    if-ne v2, v7, :cond_3

    .line 725
    iput-boolean v4, p0, Lcom/anall/statusbar/NotificationView;->isBlack:Z

    goto :goto_0

    .line 726
    :cond_3
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 727
    iput-boolean v4, p0, Lcom/anall/statusbar/NotificationView;->isBlack:Z

    .line 728
    const/high16 v3, 0x1000

    invoke-virtual {p0, v3}, Lcom/anall/statusbar/NotificationView;->setBackgroundColor(I)V

    goto :goto_0

    .line 736
    :cond_4
    iput-boolean v4, p0, Lcom/anall/statusbar/NotificationView;->isBlack:Z

    goto :goto_1
.end method

.method private updateTime(Ljava/lang/String;)V
    .locals 8
    .parameter "resultTime"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 87
    if-nez p1, :cond_1

    .line 88
    iget-object v4, p0, Lcom/anall/statusbar/NotificationView;->mSdf:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, date:Ljava/lang/String;
    const-string v4, "#"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v1, v4, v5

    .line 91
    .local v1, time:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/anall/statusbar/NotificationView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 92
    const-string v5, "time_12_24"

    .line 90
    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, timeFormat:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/lx/launcher8/util/Utils;->getPmTime(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, times:[Ljava/lang/String;
    aget-object v4, v3, v7

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    iget-object v4, p0, Lcom/anall/statusbar/NotificationView;->mTime:Landroid/widget/TextView;

    aget-object v5, v3, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .end local v0           #date:Ljava/lang/String;
    .end local v1           #time:Ljava/lang/String;
    .end local v2           #timeFormat:Ljava/lang/String;
    .end local v3           #times:[Ljava/lang/String;
    :goto_0
    return-void

    .line 97
    .restart local v0       #date:Ljava/lang/String;
    .restart local v1       #time:Ljava/lang/String;
    .restart local v2       #timeFormat:Ljava/lang/String;
    .restart local v3       #times:[Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/anall/statusbar/NotificationView;->mTime:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 100
    .end local v0           #date:Ljava/lang/String;
    .end local v1           #time:Ljava/lang/String;
    .end local v2           #timeFormat:Ljava/lang/String;
    .end local v3           #times:[Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/anall/statusbar/NotificationView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public addNotification(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 6
    .parameter "draw"
    .parameter "pkg"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 232
    if-nez p2, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v3, p0, Lcom/anall/statusbar/NotificationView;->mNoticeRecoders:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 234
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_0

    .line 235
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anall/statusbar/NotificationView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 236
    .local v0, image:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/anall/statusbar/NotificationView;->mNoticeRecoders:Ljava/util/HashMap;

    invoke-virtual {v3, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 238
    invoke-virtual {v0, v4, v5, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 239
    invoke-virtual {p0}, Lcom/anall/statusbar/NotificationView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 240
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    invoke-virtual {p0}, Lcom/anall/statusbar/NotificationView;->getHeight()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 243
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 245
    const/4 v3, 0x2

    invoke-virtual {p0, v0, v3}, Lcom/anall/statusbar/NotificationView;->addView(Landroid/view/View;I)V

    .line 247
    iget-object v3, p0, Lcom/anall/statusbar/NotificationView;->watchered:Lcom/anall/statusbar/NotificationDetector;

    if-eqz v3, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/anall/statusbar/NotificationView;->isDisplay()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/anall/statusbar/NotificationView;->watchered:Lcom/anall/statusbar/NotificationDetector;

    invoke-virtual {v3}, Lcom/anall/statusbar/NotificationDetector;->hideView()V

    goto :goto_0

    .line 249
    :cond_2
    iget-object v3, p0, Lcom/anall/statusbar/NotificationView;->watchered:Lcom/anall/statusbar/NotificationDetector;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/anall/statusbar/NotificationDetector;->autoHideNotification(Z)V

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 150
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 154
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/anall/statusbar/NotificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 158
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/anall/statusbar/NotificationView;->getChildCount()I

    move-result v1

    .line 175
    .local v1, childSize:I
    if-nez v1, :cond_1

    .line 225
    :cond_0
    return-void

    .line 176
    :cond_1
    const v7, 0x7f09017d

    .line 177
    .local v7, ridSeparator:I
    const/4 v9, 0x0

    .line 178
    .local v9, separatorChild:Landroid/view/View;
    invoke-virtual {p0}, Lcom/anall/statusbar/NotificationView;->getPaddingTop()I

    move-result v10

    .line 179
    .local v10, top:I
    invoke-virtual {p0}, Lcom/anall/statusbar/NotificationView;->getPaddingLeft()I

    move-result v4

    .line 180
    .local v4, left:I
    invoke-virtual {p0}, Lcom/anall/statusbar/NotificationView;->getMeasuredWidth()I

    move-result v11

    .line 182
    .local v11, width:I
    invoke-virtual {p0}, Lcom/anall/statusbar/NotificationView;->getPaddingRight()I

    move-result v12

    sub-int v5, v11, v12

    .line 184
    .local v5, leftBoundes:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-gez v3, :cond_5

    .line 195
    :goto_1
    if-eqz v9, :cond_3

    .line 196
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 197
    .local v2, childW:I
    sub-int v12, v11, v2

    div-int/lit8 v8, v12, 0x2

    .line 198
    .local v8, sepLeft:I
    sub-int v12, v5, v2

    if-le v8, v12, :cond_2

    .line 199
    sub-int v8, v5, v2

    .line 200
    :cond_2
    add-int v12, v8, v2

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v10

    invoke-virtual {v9, v8, v10, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 201
    move v5, v8

    .line 205
    .end local v2           #childW:I
    .end local v8           #sepLeft:I
    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_0

    .line 206
    invoke-virtual {p0, v3}, Lcom/anall/statusbar/NotificationView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 207
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_8

    .line 205
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 185
    .end local v0           #child:Landroid/view/View;
    :cond_5
    invoke-virtual {p0, v3}, Lcom/anall/statusbar/NotificationView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 186
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v12

    if-ne v12, v7, :cond_6

    .line 187
    move-object v9, v0

    .line 188
    goto :goto_1

    .line 190
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_7

    .line 184
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 191
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 192
    .restart local v2       #childW:I
    sub-int v12, v5, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v10

    invoke-virtual {v0, v12, v10, v5, v13}, Landroid/view/View;->layout(IIII)V

    .line 193
    sub-int/2addr v5, v2

    goto :goto_4

    .line 208
    .end local v2           #childW:I
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v12

    if-eq v12, v7, :cond_0

    .line 210
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_4

    .line 212
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 213
    .restart local v2       #childW:I
    add-int v12, v2, v4

    if-le v12, v5, :cond_9

    const/16 v12, 0x96

    if-le v5, v12, :cond_9

    .line 214
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 215
    .local v6, pkg:Ljava/lang/String;
    iget-object v12, p0, Lcom/anall/statusbar/NotificationView;->mNoticeRecoders:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-ne v0, v12, :cond_4

    .line 216
    iget-object v12, p0, Lcom/anall/statusbar/NotificationView;->mNoticeRecoders:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-virtual {p0, v0}, Lcom/anall/statusbar/NotificationView;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_3

    .line 221
    .end local v6           #pkg:Ljava/lang/String;
    :cond_9
    add-int v12, v4, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v10

    invoke-virtual {v0, v4, v10, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 222
    add-int/2addr v4, v2

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/anall/statusbar/NotificationView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/anall/statusbar/NotificationView;->getPaddingRight()I

    move-result v1

    add-int v3, v0, v1

    .line 165
    .local v3, widthUse:I
    invoke-virtual {p0}, Lcom/anall/statusbar/NotificationView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/anall/statusbar/NotificationView;->getPaddingBottom()I

    move-result v1

    add-int v5, v0, v1

    .line 166
    .local v5, heightUse:I
    invoke-virtual {p0}, Lcom/anall/statusbar/NotificationView;->getChildCount()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, i:I
    :goto_0
    if-gez v6, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/anall/statusbar/NotificationView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/anall/statusbar/NotificationView;->resolveSize(II)I

    move-result v0

    .line 170
    invoke-virtual {p0}, Lcom/anall/statusbar/NotificationView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/anall/statusbar/NotificationView;->resolveSize(II)I

    move-result v1

    .line 169
    invoke-virtual {p0, v0, v1}, Lcom/anall/statusbar/NotificationView;->setMeasuredDimension(II)V

    .line 171
    return-void

    .line 167
    :cond_0
    invoke-virtual {p0, v6}, Lcom/anall/statusbar/NotificationView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/anall/statusbar/NotificationView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 166
    add-int/lit8 v6, v6, -0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 388
    iget-object v6, p0, Lcom/anall/statusbar/NotificationView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_0

    .line 389
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, p0, Lcom/anall/statusbar/NotificationView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 392
    :cond_0
    iget-object v6, p0, Lcom/anall/statusbar/NotificationView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 394
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 431
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_1
    :goto_0
    return v5

    .line 396
    :pswitch_0
    iget-object v6, p0, Lcom/anall/statusbar/NotificationView;->watchered:Lcom/anall/statusbar/NotificationDetector;

    iget v6, v6, Lcom/anall/statusbar/NotificationDetector;->isHideView:I

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/anall/statusbar/NotificationView;->mPower:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 397
    :cond_2
    iget-object v6, p0, Lcom/anall/statusbar/NotificationView;->watchered:Lcom/anall/statusbar/NotificationDetector;

    invoke-virtual {v6, v5}, Lcom/anall/statusbar/NotificationDetector;->autoHideNotification(Z)V

    goto :goto_0

    .line 401
    :pswitch_1
    iget-object v3, p0, Lcom/anall/statusbar/NotificationView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 402
    .local v3, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v6, 0x3e8

    invoke-virtual {v3, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 403
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    float-to-int v4, v6

    .line 405
    .local v4, velocityY:I
    const/16 v6, 0x12c

    if-le v4, v6, :cond_3

    iget-boolean v6, p0, Lcom/anall/statusbar/NotificationView;->isLock:Z

    if-nez v6, :cond_3

    .line 406
    invoke-virtual {p0}, Lcom/anall/statusbar/NotificationView;->removeAllNotification()V

    .line 407
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xf

    if-le v6, v7, :cond_4

    .line 408
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lcom/anall/statusbar/NotificationView;->mContext:Landroid/content/Context;

    const-class v7, Lcom/anall/statusbar/ExpendAct;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 409
    .local v1, intent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 410
    const/high16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 411
    iget-object v6, p0, Lcom/anall/statusbar/NotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 424
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/anall/statusbar/NotificationView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_1

    .line 425
    iget-object v6, p0, Lcom/anall/statusbar/NotificationView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 426
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/anall/statusbar/NotificationView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 414
    :cond_4
    :try_start_0
    iget-object v6, p0, Lcom/anall/statusbar/NotificationView;->mContext:Landroid/content/Context;

    const-string v7, "statusbar"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 415
    .local v2, service:Ljava/lang/Object;
    if-eqz v2, :cond_3

    .line 416
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "expand"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 417
    .local v0, expand:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 419
    .end local v0           #expand:Ljava/lang/reflect/Method;
    .end local v2           #service:Ljava/lang/Object;
    :catch_0
    move-exception v6

    goto :goto_1

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeAllNotification()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 262
    iget-object v5, p0, Lcom/anall/statusbar/NotificationView;->mNoticeRecoders:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 263
    invoke-virtual {p0}, Lcom/anall/statusbar/NotificationView;->getChildCount()I

    move-result v3

    .line 264
    .local v3, size:I
    if-nez v3, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    const/4 v4, -0x1

    .local v4, start:I
    const/4 v1, 0x0

    .line 266
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v3, :cond_2

    .line 273
    if-ltz v4, :cond_0

    .line 274
    invoke-virtual {p0, v4, v1}, Lcom/anall/statusbar/NotificationView;->removeViews(II)V

    goto :goto_0

    .line 267
    :cond_2
    invoke-virtual {p0, v2}, Lcom/anall/statusbar/NotificationView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 268
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v6, :cond_4

    .line 269
    if-ne v4, v6, :cond_3

    move v4, v2

    .line 270
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 266
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public setVisibility(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    const/4 v3, 0x0

    .line 659
    iget-boolean v0, p0, Lcom/anall/statusbar/NotificationView;->isBlack:Z

    .line 660
    .local v0, iconColor:Z
    invoke-virtual {p0}, Lcom/anall/statusbar/NotificationView;->getVisibility()I

    move-result v1

    .line 661
    .local v1, oldVisible:I
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 662
    invoke-direct {p0}, Lcom/anall/statusbar/NotificationView;->transfiguration()Z

    .line 663
    if-ne v1, p1, :cond_0

    iget-boolean v2, p0, Lcom/anall/statusbar/NotificationView;->isBlack:Z

    if-eq v0, v2, :cond_1

    .line 664
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 678
    :cond_1
    :goto_0
    return-void

    .line 666
    :sswitch_0
    iget-object v2, p0, Lcom/anall/statusbar/NotificationView;->watchered:Lcom/anall/statusbar/NotificationDetector;

    iget-boolean v2, v2, Lcom/anall/statusbar/NotificationDetector;->isObservered:Z

    if-nez v2, :cond_2

    .line 667
    invoke-direct {p0}, Lcom/anall/statusbar/NotificationView;->initAction()V

    .line 669
    :cond_2
    iget-object v2, p0, Lcom/anall/statusbar/NotificationView;->watchered:Lcom/anall/statusbar/NotificationDetector;

    invoke-virtual {v2, v3}, Lcom/anall/statusbar/NotificationDetector;->autoHideNotification(Z)V

    .line 671
    iget-object v2, p0, Lcom/anall/statusbar/NotificationView;->mGps:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 674
    :sswitch_1
    invoke-direct {p0, v3}, Lcom/anall/statusbar/NotificationView;->hideViews(I)V

    goto :goto_0

    .line 664
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public settingsChanged()V
    .locals 2

    .prologue
    .line 686
    new-instance v0, Lcom/lx/launcher8/cfg/DeskSetting;

    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anall/statusbar/NotificationView;->mDeskSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 688
    iget-object v0, p0, Lcom/anall/statusbar/NotificationView;->watchered:Lcom/anall/statusbar/NotificationDetector;

    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->mDeskSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getStatusHoldTime()I

    move-result v1

    iput v1, v0, Lcom/anall/statusbar/NotificationDetector;->mHideTime:I

    .line 689
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/anall/statusbar/NotificationView;->setVisibility(I)V

    .line 690
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/anall/statusbar/NotificationView;->setVisibility(I)V

    .line 691
    return-void
.end method

.method public transfiguration(ZZ)V
    .locals 3
    .parameter "isWP8"
    .parameter "isLock"

    .prologue
    const/4 v2, 0x0

    .line 701
    iput-boolean p1, p0, Lcom/anall/statusbar/NotificationView;->isWP8:Z

    .line 702
    iput-boolean p2, p0, Lcom/anall/statusbar/NotificationView;->isLock:Z

    .line 703
    invoke-direct {p0}, Lcom/anall/statusbar/NotificationView;->transfiguration()Z

    move-result v0

    .line 704
    .local v0, bool:Z
    iget-boolean v1, p0, Lcom/anall/statusbar/NotificationView;->isBlack:Z

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_1

    .line 707
    :cond_0
    invoke-direct {p0, v2}, Lcom/anall/statusbar/NotificationView;->hideViews(I)V

    .line 708
    invoke-direct {p0}, Lcom/anall/statusbar/NotificationView;->initAction()V

    .line 709
    iget-object v1, p0, Lcom/anall/statusbar/NotificationView;->watchered:Lcom/anall/statusbar/NotificationDetector;

    invoke-virtual {v1, v2}, Lcom/anall/statusbar/NotificationDetector;->autoHideNotification(Z)V

    .line 711
    :cond_1
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 13
    .parameter "observable"
    .parameter "data"

    .prologue
    const/16 v10, 0x10

    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v0, 0x0

    const/16 v8, 0x8

    .line 454
    if-eqz p2, :cond_1

    instance-of v7, p2, Landroid/os/Message;

    if-eqz v7, :cond_1

    move-object v4, p2

    .line 455
    check-cast v4, Landroid/os/Message;

    .line 456
    .local v4, msg:Landroid/os/Message;
    const/4 v3, 0x0

    .line 457
    .local v3, level:I
    const/4 v1, 0x0

    .line 458
    .local v1, display:Z
    iget v7, v4, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 651
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->watchered:Lcom/anall/statusbar/NotificationDetector;

    iget v7, v7, Lcom/anall/statusbar/NotificationDetector;->isHideView:I

    if-eqz v7, :cond_1

    if-eqz v1, :cond_1

    .line 652
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->watchered:Lcom/anall/statusbar/NotificationDetector;

    invoke-virtual {v7, v11}, Lcom/anall/statusbar/NotificationDetector;->autoHideNotification(Z)V

    .line 655
    .end local v1           #display:Z
    .end local v3           #level:I
    .end local v4           #msg:Landroid/os/Message;
    :cond_1
    return-void

    .line 460
    .restart local v1       #display:Z
    .restart local v3       #level:I
    .restart local v4       #msg:Landroid/os/Message;
    :pswitch_0
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->notifiMap:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 461
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->notifiMap:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v12, :cond_2

    .line 462
    iget v7, v4, Landroid/os/Message;->arg1:I

    if-ne v7, v12, :cond_2

    .line 463
    const/4 v1, 0x1

    .line 466
    :cond_2
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->notifiMap:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, v4, Landroid/os/Message;->arg1:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget v7, v4, Landroid/os/Message;->arg1:I

    if-ne v7, v12, :cond_5

    .line 468
    const/16 v3, 0xc8

    .line 472
    :goto_1
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mDeskSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v7}, Lcom/lx/launcher8/cfg/DeskSetting;->getStatusBattey()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 473
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mBattey:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-ne v7, v8, :cond_3

    .line 474
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mBattey:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    :cond_3
    const/16 v7, 0xc8

    if-ne v3, v7, :cond_6

    .line 477
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mBattey:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    iget v10, v4, Landroid/os/Message;->arg2:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    :goto_2
    iget-boolean v7, p0, Lcom/anall/statusbar/NotificationView;->isBlack:Z

    if-eqz v7, :cond_7

    .line 482
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mBattey:Landroid/widget/TextView;

    const/high16 v9, -0x100

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 489
    :goto_3
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mPower:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-ne v7, v8, :cond_4

    .line 490
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mPower:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 492
    :cond_4
    iget-object v8, p0, Lcom/anall/statusbar/NotificationView;->mPower:Landroid/widget/ImageView;

    iget-boolean v7, p0, Lcom/anall/statusbar/NotificationView;->isBlack:Z

    if-eqz v7, :cond_9

    const v7, 0x7f02012f

    :goto_4
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 493
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mPower:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto/16 :goto_0

    .line 470
    :cond_5
    iget v3, v4, Landroid/os/Message;->arg1:I

    goto :goto_1

    .line 479
    :cond_6
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mBattey:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 484
    :cond_7
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mBattey:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 487
    :cond_8
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mBattey:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 492
    :cond_9
    const v7, 0x7f020128

    goto :goto_4

    .line 496
    :pswitch_1
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->notifiMap:Ljava/util/HashMap;

    const/16 v9, 0x14

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->notifiMap:Ljava/util/HashMap;

    const/16 v9, 0x14

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v11, :cond_0

    .line 499
    :cond_a
    iget v3, v4, Landroid/os/Message;->arg1:I

    .line 500
    add-int/lit8 v3, v3, 0xa

    .line 501
    const/16 v7, 0x63

    if-le v3, v7, :cond_b

    .line 502
    const/16 v3, 0x63

    .line 503
    :cond_b
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->notifiMap:Ljava/util/HashMap;

    const/16 v9, 0x11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-ne v7, v8, :cond_c

    .line 505
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 507
    :cond_c
    iget-object v8, p0, Lcom/anall/statusbar/NotificationView;->mSignal:Landroid/widget/ImageView;

    iget-boolean v7, p0, Lcom/anall/statusbar/NotificationView;->isBlack:Z

    if-eqz v7, :cond_d

    const v7, 0x7f020146

    :goto_5
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 508
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto/16 :goto_0

    .line 507
    :cond_d
    const v7, 0x7f02013f

    goto :goto_5

    .line 511
    :pswitch_2
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->notifiMap:Ljava/util/HashMap;

    const/16 v9, 0x14

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->notifiMap:Ljava/util/HashMap;

    const/16 v9, 0x14

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v11, :cond_0

    .line 514
    :cond_e
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->notifiMap:Ljava/util/HashMap;

    const/16 v9, 0x18

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->notifiMap:Ljava/util/HashMap;

    const/16 v9, 0x18

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_0

    .line 517
    :cond_f
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mImg3G:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-ne v7, v8, :cond_10

    .line 518
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mImg3G:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 519
    const/4 v1, 0x1

    .line 521
    :cond_10
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->notifiMap:Ljava/util/HashMap;

    const/16 v9, 0x12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, v4, Landroid/os/Message;->arg1:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    iget v7, v4, Landroid/os/Message;->arg1:I

    if-ne v7, v11, :cond_12

    .line 523
    iget-object v8, p0, Lcom/anall/statusbar/NotificationView;->mImg3G:Landroid/widget/ImageView;

    iget-boolean v7, p0, Lcom/anall/statusbar/NotificationView;->isBlack:Z

    if-eqz v7, :cond_11

    const v7, 0x7f02002c

    :goto_6
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 524
    :cond_11
    const v7, 0x7f0201e8

    goto :goto_6

    .line 525
    :cond_12
    iget v7, v4, Landroid/os/Message;->arg1:I

    const/4 v9, 0x2

    if-ne v7, v9, :cond_14

    .line 526
    iget-object v8, p0, Lcom/anall/statusbar/NotificationView;->mImg3G:Landroid/widget/ImageView;

    iget-boolean v7, p0, Lcom/anall/statusbar/NotificationView;->isBlack:Z

    if-eqz v7, :cond_13

    const v7, 0x7f02002b

    :goto_7
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 527
    :cond_13
    const v7, 0x7f0201e7

    goto :goto_7

    .line 528
    :cond_14
    iget v7, v4, Landroid/os/Message;->arg1:I

    const/4 v9, 0x3

    if-ne v7, v9, :cond_16

    .line 529
    iget-object v8, p0, Lcom/anall/statusbar/NotificationView;->mImg3G:Landroid/widget/ImageView;

    iget-boolean v7, p0, Lcom/anall/statusbar/NotificationView;->isBlack:Z

    if-eqz v7, :cond_15

    const v7, 0x7f020024

    :goto_8
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 530
    :cond_15
    const v7, 0x7f0201e2

    goto :goto_8

    .line 532
    :cond_16
    iget-object v9, p0, Lcom/anall/statusbar/NotificationView;->mImg3G:Landroid/widget/ImageView;

    iget-boolean v7, p0, Lcom/anall/statusbar/NotificationView;->isBlack:Z

    if-eqz v7, :cond_17

    const v7, 0x7f02002d

    :goto_9
    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 533
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mImg3G:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 532
    :cond_17
    const v7, 0x7f0201e9

    goto :goto_9

    .line 537
    :pswitch_3
    iget v7, v4, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_18

    .line 538
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mHeadset:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 539
    :cond_18
    iget v7, v4, Landroid/os/Message;->arg1:I

    if-ne v7, v11, :cond_0

    .line 540
    const/4 v1, 0x1

    .line 541
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mHeadset:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 542
    iget-object v8, p0, Lcom/anall/statusbar/NotificationView;->mHeadset:Landroid/widget/ImageView;

    iget-boolean v7, p0, Lcom/anall/statusbar/NotificationView;->isBlack:Z

    if-eqz v7, :cond_19

    const v7, 0x7f0200d8

    :goto_a
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_19
    const v7, 0x7f0200d9

    goto :goto_a

    .line 546
    :pswitch_4
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->notifiMap:Ljava/util/HashMap;

    const/16 v9, 0x14

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, v4, Landroid/os/Message;->arg1:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const/4 v1, 0x1

    .line 548
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 549
    iget v7, v4, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_1e

    .line 550
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->notifiMap:Ljava/util/HashMap;

    const/16 v8, 0x11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 551
    iget-object v8, p0, Lcom/anall/statusbar/NotificationView;->mSignal:Landroid/widget/ImageView;

    iget-boolean v7, p0, Lcom/anall/statusbar/NotificationView;->isBlack:Z

    if-eqz v7, :cond_1b

    const v7, 0x7f020146

    :goto_b
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 552
    iget-object v8, p0, Lcom/anall/statusbar/NotificationView;->mSignal:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->notifiMap:Ljava/util/HashMap;

    const/16 v9, 0x11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 557
    :goto_c
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->notifiMap:Ljava/util/HashMap;

    const/16 v8, 0x12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->notifiMap:Ljava/util/HashMap;

    const/16 v8, 0x12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v12, :cond_1a

    .line 558
    iget-object v8, p0, Lcom/anall/statusbar/NotificationView;->mSignal:Landroid/widget/ImageView;

    iget-boolean v7, p0, Lcom/anall/statusbar/NotificationView;->isBlack:Z

    if-eqz v7, :cond_1d

    const v7, 0x7f020146

    :goto_d
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 559
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 561
    :cond_1a
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 551
    :cond_1b
    const v7, 0x7f02013f

    goto :goto_b

    .line 554
    :cond_1c
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mSignal:Landroid/widget/ImageView;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_c

    .line 558
    :cond_1d
    const v7, 0x7f02013f

    goto :goto_d

    .line 562
    :cond_1e
    iget v7, v4, Landroid/os/Message;->arg1:I

    if-ne v7, v11, :cond_0

    .line 563
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mSignal:Landroid/widget/ImageView;

    const/4 v9, 0x4

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 564
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mImg3G:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 565
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 569
    :pswitch_5
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-ne v7, v8, :cond_1f

    iget v7, v4, Landroid/os/Message;->arg1:I

    const/4 v9, 0x3

    if-ne v7, v9, :cond_1f

    .line 570
    const/4 v1, 0x1

    .line 572
    :cond_1f
    iget v7, v4, Landroid/os/Message;->arg1:I

    const/4 v9, 0x3

    if-ne v7, v9, :cond_21

    .line 573
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 574
    iget-object v8, p0, Lcom/anall/statusbar/NotificationView;->mWifi:Landroid/widget/ImageView;

    iget-boolean v7, p0, Lcom/anall/statusbar/NotificationView;->isBlack:Z

    if-eqz v7, :cond_20

    const v7, 0x7f02014b

    :goto_e
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 576
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mWifi:Landroid/widget/ImageView;

    iget v8, v4, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto/16 :goto_0

    .line 575
    :cond_20
    const v7, 0x7f02014c

    goto :goto_e

    .line 577
    :cond_21
    iget v7, v4, Landroid/os/Message;->arg1:I

    if-ne v7, v11, :cond_0

    .line 578
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 582
    :pswitch_6
    iget-object v9, p0, Lcom/anall/statusbar/NotificationView;->mVibrator:Landroid/widget/ImageView;

    iget-boolean v7, p0, Lcom/anall/statusbar/NotificationView;->isBlack:Z

    if-eqz v7, :cond_22

    const v7, 0x7f020124

    :goto_f
    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 583
    iget v7, v4, Landroid/os/Message;->arg1:I

    if-ne v7, v11, :cond_23

    .line 584
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mVibrator:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 585
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mVibrator:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 586
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 582
    :cond_22
    const v7, 0x7f020123

    goto :goto_f

    .line 587
    :cond_23
    iget v7, v4, Landroid/os/Message;->arg1:I

    const/4 v9, 0x2

    if-ne v7, v9, :cond_24

    .line 588
    const/4 v1, 0x1

    .line 589
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mVibrator:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 590
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mVibrator:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 591
    :cond_24
    iget v7, v4, Landroid/os/Message;->arg1:I

    const/4 v9, 0x3

    if-ne v7, v9, :cond_0

    .line 592
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mVibrator:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 596
    :pswitch_7
    iget v7, v4, Landroid/os/Message;->arg1:I

    const/16 v9, 0xc

    if-ne v7, v9, :cond_26

    .line 597
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mBluetooth:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 598
    iget-object v8, p0, Lcom/anall/statusbar/NotificationView;->mBluetooth:Landroid/widget/ImageView;

    iget-boolean v7, p0, Lcom/anall/statusbar/NotificationView;->isBlack:Z

    if-eqz v7, :cond_25

    const v7, 0x7f020025

    :goto_10
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 599
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 598
    :cond_25
    const v7, 0x7f0201e3

    goto :goto_10

    .line 600
    :cond_26
    iget v7, v4, Landroid/os/Message;->arg1:I

    const/16 v9, 0xa

    if-ne v7, v9, :cond_0

    .line 601
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mBluetooth:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 605
    :pswitch_8
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->notifiMap:Ljava/util/HashMap;

    const/16 v9, 0x18

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, v4, Landroid/os/Message;->arg1:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    iget v7, v4, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_27

    .line 607
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mImg3G:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 608
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 609
    :cond_27
    iget v7, v4, Landroid/os/Message;->arg1:I

    if-ne v7, v11, :cond_28

    .line 610
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mImg3G:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 612
    :cond_28
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mImg3G:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 616
    :pswitch_9
    iget-object v7, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 619
    iget-object v6, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 620
    .local v6, time:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/anall/statusbar/NotificationView;->updateTime(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 623
    .end local v6           #time:Ljava/lang/String;
    :pswitch_a
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->watchered:Lcom/anall/statusbar/NotificationDetector;

    iput v11, v7, Lcom/anall/statusbar/NotificationDetector;->isHideView:I

    .line 624
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->notifiMap:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->notifiMap:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v12, :cond_29

    .line 625
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->watchered:Lcom/anall/statusbar/NotificationDetector;

    const/4 v8, 0x2

    iput v8, v7, Lcom/anall/statusbar/NotificationDetector;->isHideView:I

    .line 627
    :cond_29
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->watchered:Lcom/anall/statusbar/NotificationDetector;

    iget v7, v7, Lcom/anall/statusbar/NotificationDetector;->isHideView:I

    invoke-direct {p0, v7}, Lcom/anall/statusbar/NotificationView;->hideViews(I)V

    goto/16 :goto_0

    .line 630
    :pswitch_b
    iget-object v7, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 631
    .local v2, isAnima:Z
    const/4 v5, 0x0

    .line 632
    .local v5, style:I
    if-eqz v2, :cond_2a

    .line 633
    const/4 v5, 0x1

    .line 634
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->notifiMap:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->notifiMap:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v12, :cond_2a

    .line 635
    const/4 v5, 0x2

    .line 638
    :cond_2a
    invoke-direct {p0, v5}, Lcom/anall/statusbar/NotificationView;->displayViews(I)V

    goto/16 :goto_0

    .line 641
    .end local v2           #isAnima:Z
    .end local v5           #style:I
    :pswitch_c
    iget v7, v4, Landroid/os/Message;->arg1:I

    if-ne v7, v11, :cond_2b

    .line 642
    .local v0, curState:I
    :goto_11
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mGps:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-eq v0, v7, :cond_0

    .line 643
    const/4 v1, 0x1

    .line 644
    iget-object v7, p0, Lcom/anall/statusbar/NotificationView;->mGps:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 645
    iget-object v8, p0, Lcom/anall/statusbar/NotificationView;->mGps:Landroid/widget/ImageView;

    iget-boolean v7, p0, Lcom/anall/statusbar/NotificationView;->isBlack:Z

    if-eqz v7, :cond_2c

    const v7, 0x7f0200d4

    :goto_12
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .end local v0           #curState:I
    :cond_2b
    move v0, v8

    .line 641
    goto :goto_11

    .line 645
    .restart local v0       #curState:I
    :cond_2c
    const v7, 0x7f0200d5

    goto :goto_12

    .line 458
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
