.class public Lcom/app/common/utils/Language;
.super Ljava/lang/Object;
.source "Language.java"


# static fields
.field private static final mEnNetwork:[Ljava/lang/String;

.field private static final mEnPage:[Ljava/lang/String;

.field private static final mZhNetwork:[Ljava/lang/String;

.field private static final mZhPage:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "\u672a\u80fd\u83b7\u53d6\u5230\u5185\u5bb9"

    aput-object v1, v0, v2

    const-string v1, "\u60a8\u5f53\u524d\u672a\u8fde\u63a5\u7f51\u7edc"

    aput-object v1, v0, v3

    const-string v1, "CMWAP\u7f51\u7edc\u94fe\u63a5\u5931\u8d25"

    aput-object v1, v0, v4

    const-string v1, "\u60a8\u5f53\u524d\u7f51\u7edc\u592a\u6162\uff0c\u8bbf\u95ee\u8d85\u65f6"

    aput-object v1, v0, v5

    sput-object v0, Lcom/app/common/utils/Language;->mZhNetwork:[Ljava/lang/String;

    .line 8
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "Failed to get to the content"

    aput-object v1, v0, v2

    const-string v1, "You are not currently connected to the network"

    aput-object v1, v0, v3

    .line 9
    const-string v1, "CMWAP network link failure"

    aput-object v1, v0, v4

    const-string v1, "Your current network is too slow, access timeout"

    aput-object v1, v0, v5

    .line 8
    sput-object v0, Lcom/app/common/utils/Language;->mEnNetwork:[Ljava/lang/String;

    .line 10
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "\u8fd9\u5df2\u7ecf\u662f\u6700\u540e\u4e00\u9875"

    aput-object v1, v0, v2

    sput-object v0, Lcom/app/common/utils/Language;->mZhPage:[Ljava/lang/String;

    .line 11
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "This is the last page"

    aput-object v1, v0, v2

    sput-object v0, Lcom/app/common/utils/Language;->mEnPage:[Ljava/lang/String;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showNetwork(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "language"
    .parameter "type"

    .prologue
    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    const-string v0, "zh"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    if-ltz p2, :cond_0

    sget-object v0, Lcom/app/common/utils/Language;->mZhNetwork:[Ljava/lang/String;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 23
    sget-object v0, Lcom/app/common/utils/Language;->mZhNetwork:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-static {p0, v0}, Lcom/app/common/utils/UMessage;->showTask(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_2
    if-ltz p2, :cond_0

    sget-object v0, Lcom/app/common/utils/Language;->mEnNetwork:[Ljava/lang/String;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 29
    sget-object v0, Lcom/app/common/utils/Language;->mEnNetwork:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-static {p0, v0}, Lcom/app/common/utils/UMessage;->showTask(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showPage(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "language"
    .parameter "type"

    .prologue
    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const-string v0, "zh"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    if-ltz p2, :cond_0

    sget-object v0, Lcom/app/common/utils/Language;->mZhPage:[Ljava/lang/String;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 40
    sget-object v0, Lcom/app/common/utils/Language;->mZhPage:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-static {p0, v0}, Lcom/app/common/utils/UMessage;->showTask(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_2
    if-ltz p2, :cond_0

    sget-object v0, Lcom/app/common/utils/Language;->mEnPage:[Ljava/lang/String;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 46
    sget-object v0, Lcom/app/common/utils/Language;->mEnPage:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-static {p0, v0}, Lcom/app/common/utils/UMessage;->showTask(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
