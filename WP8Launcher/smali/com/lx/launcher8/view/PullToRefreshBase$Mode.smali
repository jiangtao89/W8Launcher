.class public final enum Lcom/lx/launcher8/view/PullToRefreshBase$Mode;
.super Ljava/lang/Enum;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/view/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lx/launcher8/view/PullToRefreshBase$Mode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

.field public static final enum DISABLED:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

.field private static final synthetic ENUM$VALUES:[Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

.field public static final enum PULL_DOWN_TO_REFRESH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

.field public static final enum PULL_UP_TO_REFRESH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;


# instance fields
.field private mIntValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 891
    new-instance v0, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    const-string v1, "DISABLED"

    .line 894
    invoke-direct {v0, v1, v2, v2}, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->DISABLED:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    .line 896
    new-instance v0, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    const-string v1, "PULL_DOWN_TO_REFRESH"

    .line 900
    invoke-direct {v0, v1, v3, v3}, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    .line 902
    new-instance v0, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    const-string v1, "PULL_UP_TO_REFRESH"

    .line 905
    invoke-direct {v0, v1, v4, v4}, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->PULL_UP_TO_REFRESH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    .line 907
    new-instance v0, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    const-string v1, "BOTH"

    .line 911
    invoke-direct {v0, v1, v5, v5}, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->BOTH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    .line 890
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    sget-object v1, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->DISABLED:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->PULL_UP_TO_REFRESH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->BOTH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->ENUM$VALUES:[Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "modeInt"

    .prologue
    .line 940
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 941
    iput p3, p0, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->mIntValue:I

    .line 942
    return-void
.end method

.method public static mapIntToMode(I)Lcom/lx/launcher8/view/PullToRefreshBase$Mode;
    .locals 1
    .parameter "modeInt"

    .prologue
    .line 924
    packed-switch p0, :pswitch_data_0

    .line 929
    :pswitch_0
    sget-object v0, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    .line 933
    :goto_0
    return-object v0

    .line 926
    :pswitch_1
    sget-object v0, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->DISABLED:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    goto :goto_0

    .line 931
    :pswitch_2
    sget-object v0, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->PULL_UP_TO_REFRESH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    goto :goto_0

    .line 933
    :pswitch_3
    sget-object v0, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->BOTH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    goto :goto_0

    .line 924
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lx/launcher8/view/PullToRefreshBase$Mode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public static values()[Lcom/lx/launcher8/view/PullToRefreshBase$Mode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->ENUM$VALUES:[Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    array-length v1, v0

    new-array v2, v1, [Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method canPullDown()Z
    .locals 1

    .prologue
    .line 948
    sget-object v0, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->BOTH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method canPullUp()Z
    .locals 1

    .prologue
    .line 955
    sget-object v0, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->PULL_UP_TO_REFRESH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->BOTH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getIntValue()I
    .locals 1

    .prologue
    .line 959
    iget v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->mIntValue:I

    return v0
.end method
