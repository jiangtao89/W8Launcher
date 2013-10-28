.class Lcom/app/common/view/EmptyView$1;
.super Ljava/lang/Object;
.source "EmptyView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/common/view/EmptyView;->setErrorView(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/common/view/EmptyView;


# direct methods
.method constructor <init>(Lcom/app/common/view/EmptyView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/common/view/EmptyView$1;->this$0:Lcom/app/common/view/EmptyView;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/app/common/view/EmptyView$1;->this$0:Lcom/app/common/view/EmptyView;

    sget-object v1, Lcom/app/common/view/EmptyView$State;->ERROR:Lcom/app/common/view/EmptyView$State;

    invoke-virtual {v0, v1}, Lcom/app/common/view/EmptyView;->executeAction(Lcom/app/common/view/EmptyView$State;)V

    .line 100
    return-void
.end method
