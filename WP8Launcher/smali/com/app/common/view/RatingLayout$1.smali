.class Lcom/app/common/view/RatingLayout$1;
.super Ljava/lang/Object;
.source "RatingLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/common/view/RatingLayout;->changeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/common/view/RatingLayout;


# direct methods
.method constructor <init>(Lcom/app/common/view/RatingLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/common/view/RatingLayout$1;->this$0:Lcom/app/common/view/RatingLayout;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/app/common/view/RatingLayout$1;->this$0:Lcom/app/common/view/RatingLayout;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/app/common/view/RatingLayout$1;->this$0:Lcom/app/common/view/RatingLayout;

    #getter for: Lcom/app/common/view/RatingLayout;->mStartNum:I
    invoke-static {v2}, Lcom/app/common/view/RatingLayout;->access$0(Lcom/app/common/view/RatingLayout;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/app/common/view/RatingLayout;->setRating(I)V

    .line 130
    return-void
.end method
