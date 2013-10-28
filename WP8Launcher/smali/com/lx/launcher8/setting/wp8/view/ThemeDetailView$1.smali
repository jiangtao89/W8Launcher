.class Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView$1;
.super Ljava/lang/Object;
.source "ThemeDetailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->access$0(Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;)Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->shareTheme()V

    .line 53
    return-void
.end method
