.class Lcom/lx/launcher8/crop/CropImage$3;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/crop/CropImage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/crop/CropImage;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/crop/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/crop/CropImage$3;->this$0:Lcom/lx/launcher8/crop/CropImage;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage$3;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #calls: Lcom/lx/launcher8/crop/CropImage;->onSaveClicked()V
    invoke-static {v0}, Lcom/lx/launcher8/crop/CropImage;->access$10(Lcom/lx/launcher8/crop/CropImage;)V

    .line 216
    return-void
.end method
