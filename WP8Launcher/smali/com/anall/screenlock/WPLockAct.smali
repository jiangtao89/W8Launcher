.class public Lcom/anall/screenlock/WPLockAct;
.super Landroid/app/Activity;
.source "WPLockAct.java"

# interfaces
.implements Lcom/lx/launcher8/receiver/LauncherNotificationManager$MessageReceiveListener;
.implements Lcom/lx/launcher8/receiver/LauncherNotificationManager$CallReceiveListener;
.implements Lcom/anall/statusbar/AppListen$OnNoticeChangeListener;


# static fields
.field public static INSTANCE:Lcom/anall/screenlock/WPLockAct;


# instance fields
.field private lockview:Lcom/anall/screenlock/LockLayout;

.field private mBackDrawable:Lcom/anall/screenlock/RotateDrawable;

.field mDensity:F

.field private mForgetView:Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mIsLockOperate:Z

.field private mKC:Lcom/anall/screenlock/KeyboardControl;

.field mKeyboardEvent:Lcom/anall/screenlock/KeyboardControl$OnKeyboardEvent;

.field private mLastBackBitTime:J

.field mLastLayoutId:I

.field private mLauncherNotificationManager:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

.field private mLockKey:Ljava/lang/String;

.field private mNotifyView:Lcom/anall/screenlock/NotifyView;

.field private mOnCallReceive:Ljava/lang/Runnable;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRoot:Landroid/view/ViewGroup;

.field private mRootView:Landroid/view/ViewGroup;

.field private mSettings:Lcom/anall/screenlock/provider/LockSetting;

.field private mTimeRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mHandler:Landroid/os/Handler;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mLauncherNotificationManager:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    .line 194
    new-instance v0, Lcom/anall/screenlock/WPLockAct$1;

    invoke-direct {v0, p0}, Lcom/anall/screenlock/WPLockAct$1;-><init>(Lcom/anall/screenlock/WPLockAct;)V

    iput-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mKeyboardEvent:Lcom/anall/screenlock/KeyboardControl$OnKeyboardEvent;

    .line 387
    new-instance v0, Lcom/anall/screenlock/WPLockAct$2;

    invoke-direct {v0, p0}, Lcom/anall/screenlock/WPLockAct$2;-><init>(Lcom/anall/screenlock/WPLockAct;)V

    iput-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mTimeRunnable:Ljava/lang/Runnable;

    .line 519
    new-instance v0, Lcom/anall/screenlock/WPLockAct$3;

    invoke-direct {v0, p0}, Lcom/anall/screenlock/WPLockAct$3;-><init>(Lcom/anall/screenlock/WPLockAct;)V

    iput-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mOnCallReceive:Ljava/lang/Runnable;

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/anall/screenlock/WPLockAct;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mLockKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/anall/screenlock/WPLockAct;)Lcom/anall/screenlock/LockLayout;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct;->lockview:Lcom/anall/screenlock/LockLayout;

    return-object v0
.end method

.method static synthetic access$10(Lcom/anall/screenlock/WPLockAct;)Lcom/anall/screenlock/KeyboardControl;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mKC:Lcom/anall/screenlock/KeyboardControl;

    return-object v0
.end method

.method static synthetic access$2(Lcom/anall/screenlock/WPLockAct;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mForgetView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3(Lcom/anall/screenlock/WPLockAct;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/anall/screenlock/WPLockAct;->mForgetView:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$4(Lcom/anall/screenlock/WPLockAct;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/anall/screenlock/WPLockAct;->setupForgetViews()V

    return-void
.end method

.method static synthetic access$5(Lcom/anall/screenlock/WPLockAct;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$6(Lcom/anall/screenlock/WPLockAct;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/anall/screenlock/WPLockAct;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 387
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mTimeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$8(Lcom/anall/screenlock/WPLockAct;)Lcom/lx/launcher8/receiver/LauncherNotificationManager;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mLauncherNotificationManager:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    return-object v0
.end method

.method static synthetic access$9(Lcom/anall/screenlock/WPLockAct;)Lcom/anall/screenlock/NotifyView;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mNotifyView:Lcom/anall/screenlock/NotifyView;

    return-object v0
.end method

.method private checkKeyboard()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 175
    iget-object v3, p0, Lcom/anall/screenlock/WPLockAct;->mLockKey:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 176
    .local v0, emptyPwd:Z
    iget-object v3, p0, Lcom/anall/screenlock/WPLockAct;->lockview:Lcom/anall/screenlock/LockLayout;

    invoke-virtual {v3}, Lcom/anall/screenlock/LockLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v1, v2

    .line 177
    .local v1, hasKeyboard:Z
    :goto_0
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 178
    new-instance v2, Lcom/anall/screenlock/KeyboardControl;

    iget-object v3, p0, Lcom/anall/screenlock/WPLockAct;->mSettings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v3}, Lcom/anall/screenlock/provider/LockSetting;->getThemeColor()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lcom/anall/screenlock/KeyboardControl;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/anall/screenlock/WPLockAct;->mKC:Lcom/anall/screenlock/KeyboardControl;

    .line 179
    iget-object v2, p0, Lcom/anall/screenlock/WPLockAct;->mKC:Lcom/anall/screenlock/KeyboardControl;

    const v3, 0x7f0a021e

    invoke-virtual {p0, v3}, Lcom/anall/screenlock/WPLockAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anall/screenlock/KeyboardControl;->setHitText(Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcom/anall/screenlock/WPLockAct;->mKC:Lcom/anall/screenlock/KeyboardControl;

    iget-object v3, p0, Lcom/anall/screenlock/WPLockAct;->mKeyboardEvent:Lcom/anall/screenlock/KeyboardControl$OnKeyboardEvent;

    invoke-virtual {v2, v3}, Lcom/anall/screenlock/KeyboardControl;->setOnKeyBoardEvent(Lcom/anall/screenlock/KeyboardControl$OnKeyboardEvent;)V

    .line 181
    iget-object v2, p0, Lcom/anall/screenlock/WPLockAct;->lockview:Lcom/anall/screenlock/LockLayout;

    iget-object v3, p0, Lcom/anall/screenlock/WPLockAct;->mKC:Lcom/anall/screenlock/KeyboardControl;

    invoke-virtual {v3}, Lcom/anall/screenlock/KeyboardControl;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anall/screenlock/LockLayout;->addView(Landroid/view/View;)V

    .line 186
    :cond_0
    :goto_1
    return-void

    .line 176
    .end local v1           #hasKeyboard:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 182
    .restart local v1       #hasKeyboard:Z
    :cond_2
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 183
    iget-object v3, p0, Lcom/anall/screenlock/WPLockAct;->lockview:Lcom/anall/screenlock/LockLayout;

    invoke-virtual {v3, v2}, Lcom/anall/screenlock/LockLayout;->removeViewAt(I)V

    .line 184
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/anall/screenlock/WPLockAct;->mKC:Lcom/anall/screenlock/KeyboardControl;

    goto :goto_1
.end method

.method private getLayoutId()I
    .locals 3

    .prologue
    .line 292
    new-instance v2, Lcom/anall/screenlock/provider/LockSetting;

    invoke-direct {v2, p0}, Lcom/anall/screenlock/provider/LockSetting;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/anall/screenlock/provider/LockSetting;->getLockTheme()I

    move-result v1

    .line 293
    .local v1, lockTheme:I
    const/4 v0, 0x0

    .line 294
    .local v0, layoutId:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 295
    const v0, 0x7f030027

    .line 305
    :cond_0
    :goto_0
    return v0

    .line 296
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 297
    const v0, 0x7f030028

    goto :goto_0

    .line 298
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 299
    const v0, 0x7f030029

    goto :goto_0

    .line 300
    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 301
    const v0, 0x7f03002a

    goto :goto_0

    .line 302
    :cond_4
    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 303
    const v0, 0x7f03002b

    goto :goto_0
.end method

.method private initLockBack()V
    .locals 14

    .prologue
    .line 316
    new-instance v9, Ljava/io/File;

    invoke-virtual {p0}, Lcom/anall/screenlock/WPLockAct;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "lockbg"

    invoke-direct {v9, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 317
    .local v9, file:Ljava/io/File;
    invoke-virtual {p0}, Lcom/anall/screenlock/WPLockAct;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 318
    .local v7, dis:Landroid/util/DisplayMetrics;
    iget v0, v7, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/anall/screenlock/WPLockAct;->mDensity:F

    .line 320
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/anall/screenlock/WPLockAct;->mLastBackBitTime:J

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    .line 324
    .local v12, newBackBitTime:J
    iget-wide v2, p0, Lcom/anall/screenlock/WPLockAct;->mLastBackBitTime:J

    cmp-long v0, v12, v2

    if-eqz v0, :cond_0

    .line 325
    iput-wide v12, p0, Lcom/anall/screenlock/WPLockAct;->mLastBackBitTime:J

    .line 326
    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int v1, v0, v2

    .line 327
    .local v1, maxNumOfPiex:I
    const/4 v10, 0x0

    .line 329
    .local v10, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 330
    .end local v10           #fis:Ljava/io/FileInputStream;
    .local v11, fis:Ljava/io/FileInputStream;
    :try_start_1
    div-int/lit8 v0, v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v11}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 331
    invoke-static {}, Lcom/lx/launcher8/crop/img/Util;->createNativeAllocOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    .line 330
    invoke-static/range {v0 .. v5}, Lcom/lx/launcher8/crop/img/Util;->makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 332
    .local v6, bit:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mBackDrawable:Lcom/anall/screenlock/RotateDrawable;

    invoke-virtual {v0, v6}, Lcom/anall/screenlock/RotateDrawable;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 338
    if-eqz v11, :cond_0

    .line 340
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    goto :goto_0

    .line 333
    .end local v6           #bit:Landroid/graphics/Bitmap;
    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v8

    .line 334
    .local v8, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "set Lock background not Found iamge path "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/app/common/utils/ULog;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 338
    if-eqz v10, :cond_0

    .line 340
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 341
    :catch_2
    move-exception v0

    goto :goto_0

    .line 335
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v8

    .line 336
    .local v8, e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "set Lock background error !!"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/app/common/utils/ULog;->e(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 338
    if-eqz v10, :cond_0

    .line 340
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 341
    :catch_4
    move-exception v0

    goto :goto_0

    .line 337
    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 338
    :goto_3
    if-eqz v10, :cond_2

    .line 340
    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 343
    :cond_2
    :goto_4
    throw v0

    .line 341
    :catch_5
    move-exception v2

    goto :goto_4

    .line 337
    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v0

    move-object v10, v11

    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 335
    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    :catch_6
    move-exception v8

    move-object v10, v11

    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 333
    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    :catch_7
    move-exception v8

    move-object v10, v11

    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private setMissMsg()V
    .locals 4

    .prologue
    .line 309
    iget-object v2, p0, Lcom/anall/screenlock/WPLockAct;->mLauncherNotificationManager:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    invoke-virtual {v2}, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->getMissedCall()I

    move-result v0

    .line 310
    .local v0, missedCall:I
    iget-object v2, p0, Lcom/anall/screenlock/WPLockAct;->mNotifyView:Lcom/anall/screenlock/NotifyView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/anall/screenlock/NotifyView;->updateMissCall(II)V

    .line 311
    iget-object v2, p0, Lcom/anall/screenlock/WPLockAct;->mLauncherNotificationManager:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    invoke-virtual {v2}, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->getUnReadMsg()I

    move-result v1

    .line 312
    .local v1, unReadMsg:I
    iget-object v2, p0, Lcom/anall/screenlock/WPLockAct;->mNotifyView:Lcom/anall/screenlock/NotifyView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/anall/screenlock/NotifyView;->updateMissCall(II)V

    .line 313
    return-void
.end method

.method private setupForgetViews()V
    .locals 4

    .prologue
    .line 249
    new-instance v0, Lcom/anall/screenlock/WPLockAct$4;

    invoke-direct {v0, p0}, Lcom/anall/screenlock/WPLockAct$4;-><init>(Lcom/anall/screenlock/WPLockAct;)V

    .line 271
    .local v0, click:Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/anall/screenlock/WPLockAct;->mForgetView:Landroid/view/ViewGroup;

    const v3, 0x7f09014d

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 272
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v2, p0, Lcom/anall/screenlock/WPLockAct;->mForgetView:Landroid/view/ViewGroup;

    const v3, 0x7f09014e

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v2, p0, Lcom/anall/screenlock/WPLockAct;->mForgetView:Landroid/view/ViewGroup;

    const v3, 0x7f09014f

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v2, p0, Lcom/anall/screenlock/WPLockAct;->mForgetView:Landroid/view/ViewGroup;

    const v3, 0x7f090150

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v2, p0, Lcom/anall/screenlock/WPLockAct;->mForgetView:Landroid/view/ViewGroup;

    const v3, 0x7f090153

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v2, p0, Lcom/anall/screenlock/WPLockAct;->mSettings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v2}, Lcom/anall/screenlock/provider/LockSetting;->getPwdEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 280
    :cond_0
    return-void
.end method

.method private setupViews()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0900c7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anall/screenlock/LockLayout;

    iput-object v0, p0, Lcom/anall/screenlock/WPLockAct;->lockview:Lcom/anall/screenlock/LockLayout;

    .line 162
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct;->lockview:Lcom/anall/screenlock/LockLayout;

    invoke-virtual {v0, p0}, Lcom/anall/screenlock/LockLayout;->setListenerAct(Lcom/anall/screenlock/WPLockAct;)V

    .line 163
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mSettings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v0}, Lcom/anall/screenlock/provider/LockSetting;->getPwd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mLockKey:Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0900cc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anall/screenlock/NotifyView;

    iput-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mNotifyView:Lcom/anall/screenlock/NotifyView;

    .line 166
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mLauncherNotificationManager:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    if-nez v0, :cond_0

    .line 167
    invoke-static {}, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->getInstance()Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mLauncherNotificationManager:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    .line 168
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mLauncherNotificationManager:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    invoke-virtual {v0, p0}, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->setCallReceiveListener(Lcom/lx/launcher8/receiver/LauncherNotificationManager$CallReceiveListener;)V

    .line 169
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mLauncherNotificationManager:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    invoke-virtual {v0, p0}, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->setMessageReceiveListener(Lcom/lx/launcher8/receiver/LauncherNotificationManager$MessageReceiveListener;)V

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/anall/screenlock/WPLockAct;->checkKeyboard()V

    .line 172
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 142
    .local v0, keyCode:I
    sparse-switch v0, :sswitch_data_0

    .line 156
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 154
    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 142
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x1b -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 350
    invoke-virtual {p0, v0, v0}, Lcom/anall/screenlock/WPLockAct;->overridePendingTransition(II)V

    .line 351
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 352
    return-void
.end method

.method getTopComponent()Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 397
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/anall/screenlock/WPLockAct;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public isCallState()Z
    .locals 2

    .prologue
    .line 425
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/anall/screenlock/WPLockAct;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 426
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method managerViews(Z)V
    .locals 7
    .parameter "attach"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 108
    if-eqz p1, :cond_3

    .line 109
    iget-object v3, p0, Lcom/anall/screenlock/WPLockAct;->mRoot:Landroid/view/ViewGroup;

    if-nez v3, :cond_0

    .line 110
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/anall/screenlock/WPLockAct;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/anall/screenlock/WPLockAct;->mRoot:Landroid/view/ViewGroup;

    .line 111
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 112
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 113
    const/16 v3, 0x7d2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 114
    const/16 v3, 0x33

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 115
    const/16 v3, 0x128

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 117
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 118
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 119
    invoke-virtual {p0}, Lcom/anall/screenlock/WPLockAct;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 120
    .local v2, wm:Landroid/view/WindowManager;
    iget-object v3, p0, Lcom/anall/screenlock/WPLockAct;->mRoot:Landroid/view/ViewGroup;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    .end local v1           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #wm:Landroid/view/WindowManager;
    :cond_0
    iget-object v3, p0, Lcom/anall/screenlock/WPLockAct;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 123
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 124
    .local v0, flp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/anall/screenlock/WPLockAct;->mRoot:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/anall/screenlock/WPLockAct;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    .end local v0           #flp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v3, p0, Lcom/anall/screenlock/WPLockAct;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 127
    iget-object v3, p0, Lcom/anall/screenlock/WPLockAct;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 133
    :cond_2
    :goto_0
    return-void

    .line 128
    :cond_3
    iget-object v3, p0, Lcom/anall/screenlock/WPLockAct;->mRoot:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 129
    iget-object v3, p0, Lcom/anall/screenlock/WPLockAct;->mRoot:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 130
    iget-object v3, p0, Lcom/anall/screenlock/WPLockAct;->mRoot:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/anall/screenlock/WPLockAct;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public onCallIncoming(Ljava/lang/String;)V
    .locals 0
    .parameter "incomingNumber"

    .prologue
    .line 530
    return-void
.end method

.method public onCallReceive(ILjava/lang/String;)V
    .locals 4
    .parameter "missedCall"
    .parameter "incomingNumber"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anall/screenlock/WPLockAct;->mOnCallReceive:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 517
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 189
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 190
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_0

    .line 191
    .local v0, portrait:Z
    :goto_0
    iget-object v2, p0, Lcom/anall/screenlock/WPLockAct;->mBackDrawable:Lcom/anall/screenlock/RotateDrawable;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/anall/screenlock/RotateDrawable;->setRotate(I)V

    .line 192
    return-void

    .end local v0           #portrait:Z
    :cond_0
    move v0, v1

    .line 190
    goto :goto_0

    .line 191
    .restart local v0       #portrait:Z
    :cond_1
    const/16 v1, -0x5a

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 88
    invoke-virtual {p0, v3}, Lcom/anall/screenlock/WPLockAct;->requestWindowFeature(I)Z

    .line 89
    invoke-virtual {p0}, Lcom/anall/screenlock/WPLockAct;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 90
    invoke-virtual {p0}, Lcom/anall/screenlock/WPLockAct;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    new-instance v0, Lcom/anall/screenlock/provider/LockSetting;

    invoke-direct {v0, p0}, Lcom/anall/screenlock/provider/LockSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mSettings:Lcom/anall/screenlock/provider/LockSetting;

    .line 93
    sput-object p0, Lcom/anall/screenlock/WPLockAct;->INSTANCE:Lcom/anall/screenlock/WPLockAct;

    .line 94
    invoke-direct {p0}, Lcom/anall/screenlock/WPLockAct;->getLayoutId()I

    move-result v0

    iput v0, p0, Lcom/anall/screenlock/WPLockAct;->mLastLayoutId:I

    .line 96
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/anall/screenlock/WPLockAct;->mLastLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mRootView:Landroid/view/ViewGroup;

    .line 97
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/anall/screenlock/WPLockAct;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mPowerManager:Landroid/os/PowerManager;

    .line 98
    invoke-virtual {p0, v3}, Lcom/anall/screenlock/WPLockAct;->managerViews(Z)V

    .line 99
    new-instance v0, Lcom/anall/screenlock/RotateDrawable;

    invoke-direct {v0}, Lcom/anall/screenlock/RotateDrawable;-><init>()V

    iput-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mBackDrawable:Lcom/anall/screenlock/RotateDrawable;

    .line 101
    invoke-direct {p0}, Lcom/anall/screenlock/WPLockAct;->setupViews()V

    .line 102
    invoke-direct {p0}, Lcom/anall/screenlock/WPLockAct;->initLockBack()V

    .line 103
    iput-boolean v3, p0, Lcom/anall/screenlock/WPLockAct;->mIsLockOperate:Z

    .line 104
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct;->lockview:Lcom/anall/screenlock/LockLayout;

    iget-object v1, p0, Lcom/anall/screenlock/WPLockAct;->mBackDrawable:Lcom/anall/screenlock/RotateDrawable;

    iget-object v2, p0, Lcom/anall/screenlock/WPLockAct;->mSettings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v2}, Lcom/anall/screenlock/provider/LockSetting;->getThemeLockColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/anall/screenlock/LockLayout;->setTheme(Lcom/anall/screenlock/RotateDrawable;I)V

    .line 105
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 431
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 432
    sput-object v3, Lcom/anall/screenlock/WPLockAct;->INSTANCE:Lcom/anall/screenlock/WPLockAct;

    .line 433
    iget-object v1, p0, Lcom/anall/screenlock/WPLockAct;->mLauncherNotificationManager:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    invoke-virtual {v1, p0}, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->removeListener(Lcom/lx/launcher8/receiver/LauncherNotificationManager$ReceiveListener;)V

    .line 434
    iget-object v1, p0, Lcom/anall/screenlock/WPLockAct;->mBackDrawable:Lcom/anall/screenlock/RotateDrawable;

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/anall/screenlock/WPLockAct;->lockview:Lcom/anall/screenlock/LockLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/anall/screenlock/LockLayout;->setTheme(Lcom/anall/screenlock/RotateDrawable;I)V

    .line 436
    iput-object v3, p0, Lcom/anall/screenlock/WPLockAct;->mBackDrawable:Lcom/anall/screenlock/RotateDrawable;

    .line 438
    :cond_0
    iget-object v1, p0, Lcom/anall/screenlock/WPLockAct;->mRoot:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 439
    invoke-virtual {p0}, Lcom/anall/screenlock/WPLockAct;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 440
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/anall/screenlock/WPLockAct;->mRoot:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 441
    iput-object v3, p0, Lcom/anall/screenlock/WPLockAct;->mRoot:Landroid/view/ViewGroup;

    .line 443
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_1
    return-void
.end method

.method onLockHide()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 477
    iput-boolean v3, p0, Lcom/anall/screenlock/WPLockAct;->mIsLockOperate:Z

    .line 479
    iget-object v1, p0, Lcom/anall/screenlock/WPLockAct;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/anall/screenlock/WPLockAct;->mTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 480
    iget-object v1, p0, Lcom/anall/screenlock/WPLockAct;->mForgetView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/anall/screenlock/WPLockAct;->mForgetView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/anall/screenlock/WPLockAct;->mRoot:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/anall/screenlock/WPLockAct;->mForgetView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 484
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.anall.launcher.activity.changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 485
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "act_extra"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 486
    invoke-virtual {p0, v0}, Lcom/anall/screenlock/WPLockAct;->sendBroadcast(Landroid/content/Intent;)V

    .line 488
    invoke-static {p0}, Lcom/lx/launcher8/util/LockSoundManager;->getInstance(Landroid/content/Context;)Lcom/lx/launcher8/util/LockSoundManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lx/launcher8/util/LockSoundManager;->playUnLockSound()V

    .line 490
    invoke-static {p0}, Lcom/anall/statusbar/AppListen;->getInstance(Landroid/content/Context;)Lcom/anall/statusbar/AppListen;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/anall/statusbar/AppListen;->removeNoticeListener(Lcom/anall/statusbar/AppListen$OnNoticeChangeListener;)V

    .line 491
    return-void
.end method

.method onLockShow()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 450
    invoke-direct {p0}, Lcom/anall/screenlock/WPLockAct;->setMissMsg()V

    .line 451
    invoke-virtual {p0, v2}, Lcom/anall/screenlock/WPLockAct;->managerViews(Z)V

    .line 452
    iput-boolean v3, p0, Lcom/anall/screenlock/WPLockAct;->mIsLockOperate:Z

    .line 454
    iget-object v4, p0, Lcom/anall/screenlock/WPLockAct;->lockview:Lcom/anall/screenlock/LockLayout;

    invoke-virtual {v4}, Lcom/anall/screenlock/LockLayout;->restScroll()V

    .line 455
    iget-object v4, p0, Lcom/anall/screenlock/WPLockAct;->lockview:Lcom/anall/screenlock/LockLayout;

    invoke-virtual {v4, v3}, Lcom/anall/screenlock/LockLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 456
    iget-object v4, p0, Lcom/anall/screenlock/WPLockAct;->lockview:Lcom/anall/screenlock/LockLayout;

    invoke-virtual {v4}, Lcom/anall/screenlock/LockLayout;->getChildCount()I

    move-result v4

    if-le v4, v2, :cond_0

    .line 457
    iget-object v4, p0, Lcom/anall/screenlock/WPLockAct;->lockview:Lcom/anall/screenlock/LockLayout;

    invoke-virtual {v4, v2}, Lcom/anall/screenlock/LockLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 459
    :cond_0
    invoke-virtual {p0}, Lcom/anall/screenlock/WPLockAct;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v2, :cond_2

    move v1, v2

    .line 460
    .local v1, portrait:Z
    :goto_0
    iget-object v4, p0, Lcom/anall/screenlock/WPLockAct;->mBackDrawable:Lcom/anall/screenlock/RotateDrawable;

    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {v4, v3}, Lcom/anall/screenlock/RotateDrawable;->setRotate(I)V

    .line 461
    iget-object v3, p0, Lcom/anall/screenlock/WPLockAct;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/anall/screenlock/WPLockAct;->mTimeRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 462
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.anall.activity.launcher"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 463
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "act_extra"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 464
    invoke-virtual {p0, v0}, Lcom/anall/screenlock/WPLockAct;->sendBroadcast(Landroid/content/Intent;)V

    .line 466
    iget-object v2, p0, Lcom/anall/screenlock/WPLockAct;->mSettings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v2}, Lcom/anall/screenlock/provider/LockSetting;->isLockGap()Z

    move-result v2

    if-nez v2, :cond_1

    .line 467
    invoke-static {p0}, Lcom/lx/launcher8/util/LockSoundManager;->getInstance(Landroid/content/Context;)Lcom/lx/launcher8/util/LockSoundManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/util/LockSoundManager;->playLockSound()V

    .line 469
    :cond_1
    invoke-static {p0}, Lcom/anall/statusbar/AppListen;->getInstance(Landroid/content/Context;)Lcom/anall/statusbar/AppListen;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lcom/anall/statusbar/AppListen;->addNoticeListener(Lcom/anall/statusbar/AppListen$OnNoticeChangeListener;Ljava/lang/String;)V

    .line 470
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #portrait:Z
    :cond_2
    move v1, v3

    .line 459
    goto :goto_0

    .line 460
    .restart local v1       #portrait:Z
    :cond_3
    const/16 v3, -0x5a

    goto :goto_1
.end method

.method public onMessageReceive(ILjava/lang/String;)V
    .locals 2
    .parameter "unReadCount"
    .parameter "lastMsgBody"

    .prologue
    .line 535
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mNotifyView:Lcom/anall/screenlock/NotifyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/anall/screenlock/NotifyView;->updateMissCall(II)V

    .line 536
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 370
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 371
    invoke-direct {p0}, Lcom/anall/screenlock/WPLockAct;->initLockBack()V

    .line 372
    iget-object v2, p0, Lcom/anall/screenlock/WPLockAct;->mSettings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v2}, Lcom/anall/screenlock/provider/LockSetting;->getPwd()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anall/screenlock/WPLockAct;->mLockKey:Ljava/lang/String;

    .line 373
    invoke-direct {p0}, Lcom/anall/screenlock/WPLockAct;->getLayoutId()I

    move-result v0

    .line 374
    .local v0, newLayoutId:I
    iget v2, p0, Lcom/anall/screenlock/WPLockAct;->mLastLayoutId:I

    if-ne v0, v2, :cond_1

    .line 375
    iget-object v2, p0, Lcom/anall/screenlock/WPLockAct;->lockview:Lcom/anall/screenlock/LockLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/anall/screenlock/LockLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 376
    .local v1, view:Landroid/view/View;
    instance-of v2, v1, Lcom/lx/launcher8/view/AlphaLayout;

    if-eqz v2, :cond_0

    .line 377
    check-cast v1, Lcom/lx/launcher8/view/AlphaLayout;

    .end local v1           #view:Landroid/view/View;
    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/AlphaLayout;->setAlpha(I)V

    .line 379
    :cond_0
    invoke-direct {p0}, Lcom/anall/screenlock/WPLockAct;->checkKeyboard()V

    .line 380
    iget-object v2, p0, Lcom/anall/screenlock/WPLockAct;->lockview:Lcom/anall/screenlock/LockLayout;

    iget-object v3, p0, Lcom/anall/screenlock/WPLockAct;->mBackDrawable:Lcom/anall/screenlock/RotateDrawable;

    iget-object v4, p0, Lcom/anall/screenlock/WPLockAct;->mSettings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v4}, Lcom/anall/screenlock/provider/LockSetting;->getThemeLockColor()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/anall/screenlock/LockLayout;->setTheme(Lcom/anall/screenlock/RotateDrawable;I)V

    .line 385
    :goto_0
    return-void

    .line 382
    :cond_1
    invoke-virtual {p0}, Lcom/anall/screenlock/WPLockAct;->finish()V

    .line 383
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/anall/screenlock/WPLockAct;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/anall/screenlock/WPLockAct;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onNoticeChange(ILjava/lang/String;I)V
    .locals 1
    .parameter "num"
    .parameter "pkg"
    .parameter "flag"

    .prologue
    .line 540
    and-int/lit8 v0, p3, 0x8

    if-nez v0, :cond_1

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mNotifyView:Lcom/anall/screenlock/NotifyView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mNotifyView:Lcom/anall/screenlock/NotifyView;

    invoke-virtual {v0, p1, p2}, Lcom/anall/screenlock/NotifyView;->updateNotice(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 402
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 403
    iget-boolean v0, p0, Lcom/anall/screenlock/WPLockAct;->mIsLockOperate:Z

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/anall/screenlock/WPLockAct;->onLockShow()V

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anall/screenlock/WPLockAct;->mTimeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 412
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 413
    iget-object v1, p0, Lcom/anall/screenlock/WPLockAct;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 414
    .local v0, screenOn:Z
    invoke-virtual {p0}, Lcom/anall/screenlock/WPLockAct;->isCallState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 415
    invoke-virtual {p0}, Lcom/anall/screenlock/WPLockAct;->unLock()V

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/anall/screenlock/WPLockAct;->mIsLockOperate:Z

    if-eqz v1, :cond_0

    .line 419
    iget-boolean v1, p0, Lcom/anall/screenlock/WPLockAct;->mIsLockOperate:Z

    if-nez v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/anall/screenlock/WPLockAct;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/anall/screenlock/WPLockAct;->mTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasFocus"

    .prologue
    .line 356
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 357
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/anall/screenlock/WPLockAct;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 358
    .local v1, obj:Ljava/lang/Object;
    if-nez p1, :cond_0

    if-eqz v1, :cond_0

    .line 360
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "collapse"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 361
    .local v0, collapse:Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .end local v0           #collapse:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 362
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public showPopHit(IIZ)V
    .locals 5
    .parameter "titleId"
    .parameter "msgId"
    .parameter "email"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 283
    iget-object v1, p0, Lcom/anall/screenlock/WPLockAct;->mForgetView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object v1, p0, Lcom/anall/screenlock/WPLockAct;->mForgetView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v1, p0, Lcom/anall/screenlock/WPLockAct;->mRoot:Landroid/view/ViewGroup;

    const v2, 0x7f090151

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 286
    invoke-virtual {p0, p2}, Lcom/anall/screenlock/WPLockAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, msg:Ljava/lang/String;
    if-eqz p3, :cond_0

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/anall/screenlock/WPLockAct;->mSettings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v2}, Lcom/anall/screenlock/provider/LockSetting;->getPwdEmail()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/anall/screenlock/WPLockAct;->mRoot:Landroid/view/ViewGroup;

    const v2, 0x7f090152

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    return-void
.end method

.method unLock()V
    .locals 4

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/anall/screenlock/WPLockAct;->onLockHide()V

    .line 495
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/anall/screenlock/WPLockAct;->moveTaskToBack(Z)Z

    .line 496
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/anall/screenlock/WPLockAct;->managerViews(Z)V

    .line 497
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.anall.action.screen.unlock"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/anall/screenlock/WPLockAct;->sendBroadcast(Landroid/content/Intent;)V

    .line 498
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct;->lockview:Lcom/anall/screenlock/LockLayout;

    new-instance v1, Lcom/anall/screenlock/WPLockAct$5;

    invoke-direct {v1, p0}, Lcom/anall/screenlock/WPLockAct$5;-><init>(Lcom/anall/screenlock/WPLockAct;)V

    .line 510
    const-wide/16 v2, 0x1f4

    .line 498
    invoke-virtual {v0, v1, v2, v3}, Lcom/anall/screenlock/LockLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 511
    return-void
.end method
