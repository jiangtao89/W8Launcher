.class Lcom/lx/launcher8/setting/wp8/SearchAct$10;
.super Ljava/lang/Object;
.source "SearchAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/SearchAct;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

.field private final synthetic val$tvSetText:Landroid/widget/TextView;

.field private final synthetic val$tvVoiceText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/SearchAct;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$10;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$10;->val$tvVoiceText:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$10;->val$tvSetText:Landroid/widget/TextView;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 289
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$10;->val$tvVoiceText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$10;->val$tvVoiceText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$10;->val$tvSetText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$10;->val$tvVoiceText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$10;->val$tvSetText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
