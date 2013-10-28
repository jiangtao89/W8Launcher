.class public Lcom/app/common/utils/ULog;
.super Ljava/lang/Object;
.source "ULog.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mDebugable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/app/common/utils/ULog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/app/common/utils/ULog;->TAG:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/app/common/utils/ULog;->mDebugable:Z

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 38
    const/4 v0, 0x3

    sget-object v1, Lcom/app/common/utils/ULog;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/app/common/utils/ULog;->print(ILjava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, tmp:Ljava/lang/String;
    const/4 v1, 0x3

    sget-object v2, Lcom/app/common/utils/ULog;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/app/common/utils/ULog;->print(ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 50
    const/4 v0, 0x6

    sget-object v1, Lcom/app/common/utils/ULog;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/app/common/utils/ULog;->print(ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, tmp:Ljava/lang/String;
    const/4 v1, 0x6

    sget-object v2, Lcom/app/common/utils/ULog;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/app/common/utils/ULog;->print(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 42
    const/4 v0, 0x4

    sget-object v1, Lcom/app/common/utils/ULog;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/app/common/utils/ULog;->print(ILjava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, tmp:Ljava/lang/String;
    const/4 v1, 0x4

    sget-object v2, Lcom/app/common/utils/ULog;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/app/common/utils/ULog;->print(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 29
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/app/common/utils/ULog;->mDebugable:Z

    .line 30
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v1, Lcom/app/common/utils/ULog;->TAG:Ljava/lang/String;

    .line 31
    return-void

    .line 29
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static print(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "priority"
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 96
    sget-boolean v0, Lcom/app/common/utils/ULog;->mDebugable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 34
    const/4 v0, 0x2

    sget-object v1, Lcom/app/common/utils/ULog;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/app/common/utils/ULog;->print(ILjava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, tmp:Ljava/lang/String;
    const/4 v1, 0x2

    sget-object v2, Lcom/app/common/utils/ULog;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/app/common/utils/ULog;->print(ILjava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 46
    const/4 v0, 0x5

    sget-object v1, Lcom/app/common/utils/ULog;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/app/common/utils/ULog;->print(ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, tmp:Ljava/lang/String;
    const/4 v1, 0x5

    sget-object v2, Lcom/app/common/utils/ULog;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/app/common/utils/ULog;->print(ILjava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method
