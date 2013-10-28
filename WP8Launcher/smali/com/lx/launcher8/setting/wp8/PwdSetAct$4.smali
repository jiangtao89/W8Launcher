.class Lcom/lx/launcher8/setting/wp8/PwdSetAct$4;
.super Ljava/lang/Object;
.source "PwdSetAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/PwdSetAct;->createView(Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/PwdSetAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/PwdSetAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct$4;->this$0:Lcom/lx/launcher8/setting/wp8/PwdSetAct;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct$4;->this$0:Lcom/lx/launcher8/setting/wp8/PwdSetAct;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->finish()V

    .line 135
    return-void
.end method
