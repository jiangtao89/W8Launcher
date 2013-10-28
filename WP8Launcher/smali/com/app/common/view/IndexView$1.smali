.class Lcom/app/common/view/IndexView$1;
.super Ljava/lang/Object;
.source "IndexView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/common/view/IndexView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/common/view/IndexView;


# direct methods
.method constructor <init>(Lcom/app/common/view/IndexView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/common/view/IndexView$1;->this$0:Lcom/app/common/view/IndexView;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/app/common/view/IndexView$1;->this$0:Lcom/app/common/view/IndexView;

    invoke-virtual {v0}, Lcom/app/common/view/IndexView;->cancelChar()V

    .line 107
    return-void
.end method
