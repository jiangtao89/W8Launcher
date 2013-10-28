.class Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView$3;
.super Ljava/lang/Object;
.source "LockScreenPaperSearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView$3;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView$3;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;

    #calls: Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->search()V
    invoke-static {v0}, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->access$4(Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;)V

    .line 82
    return-void
.end method
