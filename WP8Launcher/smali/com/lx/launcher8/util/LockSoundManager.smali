.class public Lcom/lx/launcher8/util/LockSoundManager;
.super Ljava/lang/Object;
.source "LockSoundManager.java"


# static fields
.field private static mLockSoundManager:Lcom/lx/launcher8/util/LockSoundManager;


# instance fields
.field private lockSoundID:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mSoundPool:Landroid/media/SoundPool;

.field private unlockSoundID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/lx/launcher8/util/LockSoundManager;->mLockSoundManager:Lcom/lx/launcher8/util/LockSoundManager;

    .line 9
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lcom/lx/launcher8/util/LockSoundManager;->lockSoundID:I

    .line 15
    iput v0, p0, Lcom/lx/launcher8/util/LockSoundManager;->unlockSoundID:I

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/util/LockSoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 22
    iput-object p1, p0, Lcom/lx/launcher8/util/LockSoundManager;->mContext:Landroid/content/Context;

    .line 23
    invoke-virtual {p0}, Lcom/lx/launcher8/util/LockSoundManager;->init()V

    .line 24
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lx/launcher8/util/LockSoundManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    sget-object v0, Lcom/lx/launcher8/util/LockSoundManager;->mLockSoundManager:Lcom/lx/launcher8/util/LockSoundManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lx/launcher8/util/LockSoundManager;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/util/LockSoundManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lx/launcher8/util/LockSoundManager;->mLockSoundManager:Lcom/lx/launcher8/util/LockSoundManager;

    .line 28
    :cond_0
    sget-object v0, Lcom/lx/launcher8/util/LockSoundManager;->mLockSoundManager:Lcom/lx/launcher8/util/LockSoundManager;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lx/launcher8/util/LockSoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/lx/launcher8/util/LockSoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/util/LockSoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 94
    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/lx/launcher8/util/LockSoundManager;->initLockSound()V

    .line 33
    invoke-virtual {p0}, Lcom/lx/launcher8/util/LockSoundManager;->initUnLockSound()V

    .line 34
    iget-object v0, p0, Lcom/lx/launcher8/util/LockSoundManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lx/launcher8/util/LockSoundManager;->mAudioManager:Landroid/media/AudioManager;

    .line 35
    return-void
.end method

.method public initLockSound()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 38
    new-instance v1, Lcom/anall/screenlock/provider/LockSetting;

    iget-object v3, p0, Lcom/lx/launcher8/util/LockSoundManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/anall/screenlock/provider/LockSetting;-><init>(Landroid/content/Context;)V

    .line 39
    .local v1, mLockSet:Lcom/anall/screenlock/provider/LockSetting;
    invoke-virtual {v1}, Lcom/anall/screenlock/provider/LockSetting;->getLockSoundPath()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, lockSoundPath:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 41
    iget-object v3, p0, Lcom/lx/launcher8/util/LockSoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-nez v3, :cond_0

    .line 42
    new-instance v3, Landroid/media/SoundPool;

    const/4 v4, 0x2

    invoke-direct {v3, v5, v4, v6}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v3, p0, Lcom/lx/launcher8/util/LockSoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 44
    :cond_0
    iget v3, p0, Lcom/lx/launcher8/util/LockSoundManager;->lockSoundID:I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lx/launcher8/util/LockSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget v4, p0, Lcom/lx/launcher8/util/LockSoundManager;->lockSoundID:I

    invoke-virtual {v3, v4}, Landroid/media/SoundPool;->unload(I)Z

    .line 45
    :cond_1
    const-string v3, "none"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 46
    iput v6, p0, Lcom/lx/launcher8/util/LockSoundManager;->lockSoundID:I

    .line 56
    :goto_0
    return-void

    .line 47
    :cond_2
    const-string v3, "sound_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 48
    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 49
    .local v2, position:I
    iget-object v3, p0, Lcom/lx/launcher8/util/LockSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/lx/launcher8/util/LockSoundManager;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/lx/launcher8/util/Utils;->soundResources:[I

    aget v5, v5, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/lx/launcher8/util/LockSoundManager;->lockSoundID:I

    goto :goto_0

    .line 51
    .end local v2           #position:I
    :cond_3
    iget-object v3, p0, Lcom/lx/launcher8/util/LockSoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v3, v0, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/lx/launcher8/util/LockSoundManager;->lockSoundID:I

    goto :goto_0

    .line 54
    :cond_4
    iput v6, p0, Lcom/lx/launcher8/util/LockSoundManager;->lockSoundID:I

    goto :goto_0
.end method

.method public initUnLockSound()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 59
    new-instance v0, Lcom/anall/screenlock/provider/LockSetting;

    iget-object v3, p0, Lcom/lx/launcher8/util/LockSoundManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/anall/screenlock/provider/LockSetting;-><init>(Landroid/content/Context;)V

    .line 60
    .local v0, mLockSet:Lcom/anall/screenlock/provider/LockSetting;
    invoke-virtual {v0}, Lcom/anall/screenlock/provider/LockSetting;->getUnLockSoundPath()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, unlockSoundPath:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 62
    iget-object v3, p0, Lcom/lx/launcher8/util/LockSoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-nez v3, :cond_0

    .line 63
    new-instance v3, Landroid/media/SoundPool;

    const/4 v4, 0x2

    invoke-direct {v3, v5, v4, v6}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v3, p0, Lcom/lx/launcher8/util/LockSoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 65
    :cond_0
    iget v3, p0, Lcom/lx/launcher8/util/LockSoundManager;->unlockSoundID:I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lx/launcher8/util/LockSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget v4, p0, Lcom/lx/launcher8/util/LockSoundManager;->unlockSoundID:I

    invoke-virtual {v3, v4}, Landroid/media/SoundPool;->unload(I)Z

    .line 66
    :cond_1
    const-string v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    iput v6, p0, Lcom/lx/launcher8/util/LockSoundManager;->unlockSoundID:I

    .line 77
    :goto_0
    return-void

    .line 68
    :cond_2
    const-string v3, "sound_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 69
    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 70
    .local v1, position:I
    iget-object v3, p0, Lcom/lx/launcher8/util/LockSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/lx/launcher8/util/LockSoundManager;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/lx/launcher8/util/Utils;->soundResources:[I

    aget v5, v5, v1

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/lx/launcher8/util/LockSoundManager;->unlockSoundID:I

    goto :goto_0

    .line 72
    .end local v1           #position:I
    :cond_3
    iget-object v3, p0, Lcom/lx/launcher8/util/LockSoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v3, v2, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/lx/launcher8/util/LockSoundManager;->unlockSoundID:I

    goto :goto_0

    .line 75
    :cond_4
    iput v6, p0, Lcom/lx/launcher8/util/LockSoundManager;->unlockSoundID:I

    goto :goto_0
.end method

.method public playLockSound()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f00

    .line 80
    iget v0, p0, Lcom/lx/launcher8/util/LockSoundManager;->lockSoundID:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/util/LockSoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/util/LockSoundManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/lx/launcher8/util/LockSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/lx/launcher8/util/LockSoundManager;->lockSoundID:I

    const/high16 v6, 0x3f80

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 82
    :cond_0
    return-void
.end method

.method public playUnLockSound()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f00

    .line 85
    iget v0, p0, Lcom/lx/launcher8/util/LockSoundManager;->unlockSoundID:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/util/LockSoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/util/LockSoundManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/lx/launcher8/util/LockSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/lx/launcher8/util/LockSoundManager;->unlockSoundID:I

    const/high16 v6, 0x3f80

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 87
    :cond_0
    return-void
.end method
