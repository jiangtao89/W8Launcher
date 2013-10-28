.class Lcom/lx/launcher8/util/WpAdUtil$4;
.super Ljava/lang/Object;
.source "WpAdUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/util/WpAdUtil;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/util/WpAdUtil;

.field private final synthetic val$close:Landroid/widget/ImageView;

.field private final synthetic val$show:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/util/WpAdUtil;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/util/WpAdUtil$4;->this$0:Lcom/lx/launcher8/util/WpAdUtil;

    iput-object p2, p0, Lcom/lx/launcher8/util/WpAdUtil$4;->val$show:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/lx/launcher8/util/WpAdUtil$4;->val$close:Landroid/widget/ImageView;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0x8

    .line 184
    iget-object v0, p0, Lcom/lx/launcher8/util/WpAdUtil$4;->val$show:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/lx/launcher8/util/WpAdUtil$4;->val$close:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    return-void
.end method
