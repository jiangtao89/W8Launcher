.class Lcom/lx/launcher8/image/ImageBrower$ImageAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ImageBrower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field iv:Landroid/widget/ImageView;

.field summaryTv:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;

.field titleTv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/lx/launcher8/image/ImageBrower$ImageAdapter$ViewHolder;->this$1:Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
