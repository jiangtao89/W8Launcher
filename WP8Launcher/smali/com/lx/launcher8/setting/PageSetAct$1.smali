.class Lcom/lx/launcher8/setting/PageSetAct$1;
.super Ljava/lang/Object;
.source "PageSetAct.java"

# interfaces
.implements Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/PageSetAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/PageSetAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/PageSetAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/PageSetAct$1;->this$0:Lcom/lx/launcher8/setting/PageSetAct;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchOver(Lcom/lx/launcher8/view/SeekButton;Z)V
    .locals 1
    .parameter "v"
    .parameter "enable"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lx/launcher8/setting/PageSetAct$1;->this$0:Lcom/lx/launcher8/setting/PageSetAct;

    invoke-virtual {v0, p1, p2}, Lcom/lx/launcher8/setting/PageSetAct;->onSeekChange(Lcom/lx/launcher8/view/SeekButton;Z)V

    .line 101
    return-void
.end method
