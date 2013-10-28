.class Lcom/lx/launcher8/AnallLauncher$1;
.super Ljava/lang/Object;
.source "AnallLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/AnallLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/AnallLauncher;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/AnallLauncher;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/AnallLauncher$1;->this$0:Lcom/lx/launcher8/AnallLauncher;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 296
    sget v0, Lcom/lx/launcher8/NoSearchAct;->mLauchActCount:I

    if-gtz v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher$1;->this$0:Lcom/lx/launcher8/AnallLauncher;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.anall.activity.launcher"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/AnallLauncher;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
