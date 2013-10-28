.class public final Lcom/app/common/utils/UMessage;
.super Ljava/lang/Object;
.source "UMessage.java"


# static fields
.field private static mToast:Landroid/widget/Toast;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-static {p0, p1, p2}, Lcom/app/common/utils/UMessage;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static show(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, content:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/app/common/utils/UMessage;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 51
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "content"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/app/common/utils/UMessage;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 40
    return-void
.end method

.method public static showLong(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "content"

    .prologue
    .line 60
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/app/common/utils/UMessage;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 61
    return-void
.end method

.method public static showTask(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "content"

    .prologue
    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/app/common/utils/UMessage$1;

    invoke-direct {v1, p0, p1}, Lcom/app/common/utils/UMessage$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    return-void
.end method

.method private static showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "content"
    .parameter "duration"

    .prologue
    .line 64
    sget-object v0, Lcom/app/common/utils/UMessage;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 65
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/app/common/utils/UMessage;->mToast:Landroid/widget/Toast;

    .line 70
    :goto_0
    sget-object v0, Lcom/app/common/utils/UMessage;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 71
    return-void

    .line 67
    :cond_0
    sget-object v0, Lcom/app/common/utils/UMessage;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 68
    sget-object v0, Lcom/app/common/utils/UMessage;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_0
.end method
