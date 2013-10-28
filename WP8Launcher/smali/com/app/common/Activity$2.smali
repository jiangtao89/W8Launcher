.class Lcom/app/common/Activity$2;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/common/Activity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isFirst:Z

.field final synthetic this$0:Lcom/app/common/Activity;


# direct methods
.method constructor <init>(Lcom/app/common/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/common/Activity$2;->this$0:Lcom/app/common/Activity;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/app/common/Activity$2;->isFirst:Z

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/app/common/Activity$2;->isFirst:Z

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/app/common/Activity$2;->isFirst:Z

    .line 62
    iget-object v0, p0, Lcom/app/common/Activity$2;->this$0:Lcom/app/common/Activity;

    iget-object v0, v0, Lcom/app/common/Activity;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 64
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
