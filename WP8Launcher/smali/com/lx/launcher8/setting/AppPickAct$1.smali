.class Lcom/lx/launcher8/setting/AppPickAct$1;
.super Ljava/lang/Object;
.source "AppPickAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/AppPickAct;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/AppPickAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/AppPickAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/AppPickAct$1;->this$0:Lcom/lx/launcher8/setting/AppPickAct;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppPickAct$1;->this$0:Lcom/lx/launcher8/setting/AppPickAct;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/AppPickAct;->finish()V

    .line 48
    return-void
.end method
