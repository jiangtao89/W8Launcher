.class public Lcom/anall/screenlock/LockScreenService;
.super Landroid/app/Service;
.source "LockScreenService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anall/screenlock/LockScreenService$LockReceiver;,
        Lcom/anall/screenlock/LockScreenService$PhoneReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_SCREEN_LOCK:Ljava/lang/String; = "com.anall.action.screen.locker"

.field public static final ACTION_SCREEN_UNLOCK:Ljava/lang/String; = "com.anall.action.screen.unlock"

.field static final LOCK_MAX_GAP:I = 0xbb8

.field static final LOCK_STATE:I = 0x40000

.field static final LOCK_STATE_DISABLE:I = -0x1

.field static final LOCK_STATE_MASK:I = 0x2

.field private static TAG:Ljava/lang/String;


# instance fields
.field listener:Landroid/telephony/PhoneStateListener;

.field mDelayLock:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mKeyLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyManager:Landroid/app/KeyguardManager;

.field private mLastAction:Ljava/lang/String;

.field private mLastTime:J

.field private mLockGap:J

.field private mLockReceiver:Lcom/anall/screenlock/LockScreenService$LockReceiver;

.field mLockRunnable:Ljava/lang/Runnable;

.field private mLockState:I

.field private mPhoneReceiver:Lcom/anall/screenlock/LockScreenService$PhoneReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "LockScreenService"

    sput-object v0, Lcom/anall/screenlock/LockScreenService;->TAG:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/anall/screenlock/LockScreenService;->mLastAction:Ljava/lang/String;

    .line 118
    new-instance v0, Lcom/anall/screenlock/LockScreenService$1;

    invoke-direct {v0, p0}, Lcom/anall/screenlock/LockScreenService$1;-><init>(Lcom/anall/screenlock/LockScreenService;)V

    iput-object v0, p0, Lcom/anall/screenlock/LockScreenService;->mLockRunnable:Ljava/lang/Runnable;

    .line 219
    new-instance v0, Lcom/anall/screenlock/LockScreenService$2;

    invoke-direct {v0, p0}, Lcom/anall/screenlock/LockScreenService$2;-><init>(Lcom/anall/screenlock/LockScreenService;)V

    iput-object v0, p0, Lcom/anall/screenlock/LockScreenService;->mDelayLock:Ljava/lang/Runnable;

    .line 272
    new-instance v0, Lcom/anall/screenlock/LockScreenService$3;

    invoke-direct {v0, p0}, Lcom/anall/screenlock/LockScreenService$3;-><init>(Lcom/anall/screenlock/LockScreenService;)V

    iput-object v0, p0, Lcom/anall/screenlock/LockScreenService;->listener:Landroid/telephony/PhoneStateListener;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/anall/screenlock/LockScreenService;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/anall/screenlock/LockScreenService;->mLockState:I

    return v0
.end method

.method static synthetic access$1(Lcom/anall/screenlock/LockScreenService;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/anall/screenlock/LockScreenService;->unLock()V

    return-void
.end method

.method static synthetic access$10(Lcom/anall/screenlock/LockScreenService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/anall/screenlock/LockScreenService;->disAbleSysScreen(Z)V

    return-void
.end method

.method static synthetic access$11(Lcom/anall/screenlock/LockScreenService;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/anall/screenlock/LockScreenService;->mLockGap:J

    return-void
.end method

.method static synthetic access$12(Lcom/anall/screenlock/LockScreenService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService;->mLastAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/anall/screenlock/LockScreenService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/anall/screenlock/LockScreenService;->mLastAction:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/anall/screenlock/LockScreenService;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/anall/screenlock/LockScreenService;->lock()V

    return-void
.end method

.method static synthetic access$3(Lcom/anall/screenlock/LockScreenService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lcom/anall/screenlock/LockScreenService;->mLockState:I

    return-void
.end method

.method static synthetic access$4(Lcom/anall/screenlock/LockScreenService;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/anall/screenlock/LockScreenService;->lockStateChange(J)V

    return-void
.end method

.method static synthetic access$5(Lcom/anall/screenlock/LockScreenService;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/anall/screenlock/LockScreenService;->lockStateChange()V

    return-void
.end method

.method static synthetic access$6(Lcom/anall/screenlock/LockScreenService;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/anall/screenlock/LockScreenService;->mLastTime:J

    return-void
.end method

.method static synthetic access$7(Lcom/anall/screenlock/LockScreenService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8(Lcom/anall/screenlock/LockScreenService;)J
    .locals 2
    .parameter

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/anall/screenlock/LockScreenService;->mLockGap:J

    return-wide v0
.end method

.method static synthetic access$9(Lcom/anall/screenlock/LockScreenService;)J
    .locals 2
    .parameter

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/anall/screenlock/LockScreenService;->mLastTime:J

    return-wide v0
.end method

.method private disAbleSysScreen(Z)V
    .locals 2
    .parameter "first"

    .prologue
    .line 71
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/anall/screenlock/LockScreenService;->isSimLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService;->mKeyManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_1

    .line 76
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/anall/screenlock/LockScreenService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/anall/screenlock/LockScreenService;->mKeyManager:Landroid/app/KeyguardManager;

    .line 77
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService;->mKeyManager:Landroid/app/KeyguardManager;

    new-instance v1, Lcom/anall/screenlock/LockScreenService$4;

    invoke-direct {v1, p0}, Lcom/anall/screenlock/LockScreenService$4;-><init>(Lcom/anall/screenlock/LockScreenService;)V

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V

    .line 83
    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService;->mKeyManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/anall/screenlock/LockScreenService;->lockStateChange(J)V

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService;->mKeyLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService;->mKeyLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anall/screenlock/LockScreenService;->mKeyLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService;->mKeyManager:Landroid/app/KeyguardManager;

    sget-object v1, Lcom/anall/screenlock/LockScreenService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcom/anall/screenlock/LockScreenService;->mKeyLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 91
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService;->mKeyLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    goto :goto_0
.end method

.method private getOneSimState(Landroid/telephony/TelephonyManager;I)I
    .locals 8
    .parameter "tm"
    .parameter "sort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 258
    new-array v3, v7, [Ljava/lang/Class;

    .line 259
    .local v3, parameter:[Ljava/lang/Class;
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 260
    const-class v5, Landroid/telephony/TelephonyManager;

    const-string v6, "getSimStateGemini"

    invoke-virtual {v5, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 262
    .local v0, getSimStateGemini:Ljava/lang/reflect/Method;
    new-array v1, v7, [Ljava/lang/Object;

    .line 263
    .local v1, obParameter:[Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    .line 264
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 266
    .local v2, ob_phone:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 267
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 269
    :cond_0
    return v4
.end method

.method private isTaskTop()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 178
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/anall/screenlock/LockScreenService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 179
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 180
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.anall.screenlock.WPLockAct"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method private lock()V
    .locals 3

    .prologue
    .line 133
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/anall/screenlock/LockScreenService;->sendBroadcast(Landroid/content/Intent;)V

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/anall/screenlock/WPLockAct;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v0, intents:Landroid/content/Intent;
    const/high16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v0}, Lcom/anall/screenlock/LockScreenService;->startActivity(Landroid/content/Intent;)V

    .line 138
    return-void
.end method

.method private lockStateChange()V
    .locals 2

    .prologue
    .line 112
    const-wide/16 v0, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/anall/screenlock/LockScreenService;->lockStateChange(J)V

    .line 113
    return-void
.end method

.method private lockStateChange(J)V
    .locals 2
    .parameter "mini"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anall/screenlock/LockScreenService;->mLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 116
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anall/screenlock/LockScreenService;->mLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 117
    return-void
.end method

.method private unLock()V
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/anall/screenlock/WPLockAct;->INSTANCE:Lcom/anall/screenlock/WPLockAct;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/anall/screenlock/WPLockAct;->INSTANCE:Lcom/anall/screenlock/WPLockAct;

    invoke-virtual {v0}, Lcom/anall/screenlock/WPLockAct;->unLock()V

    .line 142
    :cond_0
    return-void
.end method


# virtual methods
.method public isSimLock()Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x1

    .line 231
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/anall/screenlock/LockScreenService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 234
    .local v2, tm:Landroid/telephony/TelephonyManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-direct {p0, v2, v5}, Lcom/anall/screenlock/LockScreenService;->getOneSimState(Landroid/telephony/TelephonyManager;I)I

    move-result v1

    .line 235
    .local v1, state:I
    if-eq v1, v8, :cond_0

    if-eq v1, v6, :cond_0

    .line 236
    if-ne v1, v7, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v3

    .line 240
    :cond_1
    const/4 v5, 0x1

    invoke-direct {p0, v2, v5}, Lcom/anall/screenlock/LockScreenService;->getOneSimState(Landroid/telephony/TelephonyManager;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 241
    if-eq v1, v8, :cond_0

    if-eq v1, v6, :cond_0

    .line 242
    if-eq v1, v7, :cond_0

    :cond_2
    move v3, v4

    .line 254
    goto :goto_0

    .line 246
    .end local v1           #state:I
    :catch_0
    move-exception v0

    .line 248
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 249
    .restart local v1       #state:I
    if-eq v1, v8, :cond_0

    if-eq v1, v6, :cond_0

    .line 250
    if-ne v1, v7, :cond_2

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "bundle"

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, lockFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    const-string v2, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    const-string v2, "com.anall.screen.LOCK_MODE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    const-string v2, "com.anall.action.screen.unlock"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    new-instance v2, Lcom/anall/screenlock/provider/LockSetting;

    invoke-direct {v2, p0}, Lcom/anall/screenlock/provider/LockSetting;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/anall/screenlock/provider/LockSetting;->isLockGap()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0xbb8

    :goto_0
    iput-wide v2, p0, Lcom/anall/screenlock/LockScreenService;->mLockGap:J

    .line 55
    new-instance v2, Lcom/anall/screenlock/LockScreenService$LockReceiver;

    invoke-direct {v2, p0}, Lcom/anall/screenlock/LockScreenService$LockReceiver;-><init>(Lcom/anall/screenlock/LockScreenService;)V

    iput-object v2, p0, Lcom/anall/screenlock/LockScreenService;->mLockReceiver:Lcom/anall/screenlock/LockScreenService$LockReceiver;

    .line 56
    iget-object v2, p0, Lcom/anall/screenlock/LockScreenService;->mLockReceiver:Lcom/anall/screenlock/LockScreenService$LockReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/anall/screenlock/LockScreenService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, phoneFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    new-instance v2, Lcom/anall/screenlock/LockScreenService$PhoneReceiver;

    invoke-direct {v2, p0}, Lcom/anall/screenlock/LockScreenService$PhoneReceiver;-><init>(Lcom/anall/screenlock/LockScreenService;)V

    iput-object v2, p0, Lcom/anall/screenlock/LockScreenService;->mPhoneReceiver:Lcom/anall/screenlock/LockScreenService$PhoneReceiver;

    .line 60
    iget-object v2, p0, Lcom/anall/screenlock/LockScreenService;->mPhoneReceiver:Lcom/anall/screenlock/LockScreenService$PhoneReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/anall/screenlock/LockScreenService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/anall/screenlock/LockScreenService;->mHandler:Landroid/os/Handler;

    .line 64
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/anall/screenlock/LockScreenService;->disAbleSysScreen(Z)V

    .line 65
    return-void

    .line 54
    .end local v1           #phoneFilter:Landroid/content/IntentFilter;
    :cond_0
    const-wide/16 v2, 0xa

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 155
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService;->mLockReceiver:Lcom/anall/screenlock/LockScreenService$LockReceiver;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService;->mLockReceiver:Lcom/anall/screenlock/LockScreenService$LockReceiver;

    invoke-virtual {p0, v0}, Lcom/anall/screenlock/LockScreenService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 157
    iput-object v1, p0, Lcom/anall/screenlock/LockScreenService;->mLockReceiver:Lcom/anall/screenlock/LockScreenService$LockReceiver;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService;->mPhoneReceiver:Lcom/anall/screenlock/LockScreenService$PhoneReceiver;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService;->mPhoneReceiver:Lcom/anall/screenlock/LockScreenService$PhoneReceiver;

    invoke-virtual {p0, v0}, Lcom/anall/screenlock/LockScreenService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    iput-object v1, p0, Lcom/anall/screenlock/LockScreenService;->mPhoneReceiver:Lcom/anall/screenlock/LockScreenService$PhoneReceiver;

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService;->mKeyLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService;->mKeyLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 165
    iput-object v1, p0, Lcom/anall/screenlock/LockScreenService;->mKeyLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 172
    :cond_2
    invoke-static {p0}, Lcom/lx/launcher8/util/LockSoundManager;->getInstance(Landroid/content/Context;)Lcom/lx/launcher8/util/LockSoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/util/LockSoundManager;->clear()V

    .line 174
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 175
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 151
    invoke-static {p0}, Lcom/lx/launcher8/util/LockSoundManager;->getInstance(Landroid/content/Context;)Lcom/lx/launcher8/util/LockSoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/util/LockSoundManager;->init()V

    .line 152
    return-void
.end method
