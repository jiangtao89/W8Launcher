.class Lcom/lx/launcher8/setting/wp8/SearchAct$15;
.super Ljava/lang/Object;
.source "SearchAct.java"

# interfaces
.implements Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/SearchAct;->setTextView(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/ImageButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

.field private final synthetic val$ib:Landroid/widget/ImageButton;

.field private final synthetic val$tv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/SearchAct;Landroid/widget/TextView;Landroid/widget/ImageButton;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$15;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$15;->val$tv:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$15;->val$ib:Landroid/widget/ImageButton;

    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 645
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$15;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    #calls: Lcom/lx/launcher8/setting/wp8/SearchAct;->GetDensityBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    invoke-static {v1, p1}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$20(Lcom/lx/launcher8/setting/wp8/SearchAct;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 646
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 647
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v3, v3, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 648
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$15;->val$tv:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 650
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$15;->val$ib:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 651
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$15;->val$ib:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 653
    :cond_0
    return-void
.end method

.method public onLoading(I)V
    .locals 0
    .parameter "loadSize"

    .prologue
    .line 657
    return-void
.end method
