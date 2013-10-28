.class Lcom/lx/launcher8/setting/LockScreenStyleAct$1;
.super Ljava/lang/Object;
.source "LockScreenStyleAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/LockScreenStyleAct;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/LockScreenStyleAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/LockScreenStyleAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct$1;->this$0:Lcom/lx/launcher8/setting/LockScreenStyleAct;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenStyleAct$1;->this$0:Lcom/lx/launcher8/setting/LockScreenStyleAct;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/LockScreenStyleAct;->finish()V

    .line 101
    return-void
.end method
