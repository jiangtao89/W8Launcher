.class Lcom/anall/statusbar/NotificationDetector$3;
.super Ljava/lang/Object;
.source "NotificationDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anall/statusbar/NotificationDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anall/statusbar/NotificationDetector;


# direct methods
.method constructor <init>(Lcom/anall/statusbar/NotificationDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anall/statusbar/NotificationDetector$3;->this$0:Lcom/anall/statusbar/NotificationDetector;

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 388
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 389
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x1a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 390
    iget-object v1, p0, Lcom/anall/statusbar/NotificationDetector$3;->this$0:Lcom/anall/statusbar/NotificationDetector;

    #calls: Lcom/anall/statusbar/NotificationDetector;->callChanged(Landroid/os/Message;)V
    invoke-static {v1, v0}, Lcom/anall/statusbar/NotificationDetector;->access$0(Lcom/anall/statusbar/NotificationDetector;Landroid/os/Message;)V

    .line 391
    return-void
.end method
