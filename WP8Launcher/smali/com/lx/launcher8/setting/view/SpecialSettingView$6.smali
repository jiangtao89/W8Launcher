.class Lcom/lx/launcher8/setting/view/SpecialSettingView$6;
.super Ljava/lang/Object;
.source "SpecialSettingView.java"

# interfaces
.implements Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/view/SpecialSettingView;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;

.field private final synthetic val$dc:Lcom/lx/launcher8/bean/DynCell;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/view/SpecialSettingView;Lcom/lx/launcher8/bean/DynCell;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$6;->this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;

    iput-object p2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$6;->val$dc:Lcom/lx/launcher8/bean/DynCell;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchOver(Lcom/lx/launcher8/view/SeekButton;Z)V
    .locals 1
    .parameter "v"
    .parameter "enable"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$6;->val$dc:Lcom/lx/launcher8/bean/DynCell;

    invoke-virtual {v0, p2}, Lcom/lx/launcher8/bean/DynCell;->setShowGroup(Z)V

    .line 286
    return-void
.end method
