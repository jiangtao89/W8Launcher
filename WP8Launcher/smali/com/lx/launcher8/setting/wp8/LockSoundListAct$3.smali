.class Lcom/lx/launcher8/setting/wp8/LockSoundListAct$3;
.super Ljava/lang/Object;
.source "LockSoundListAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/LockSoundListAct;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/LockSoundListAct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/LockSoundListAct;

    iput p2, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$3;->val$position:I

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/LockSoundListAct;

    sget-object v1, Lcom/lx/launcher8/util/Utils;->soundResources:[I

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$3;->val$position:I

    aget v1, v1, v2

    #calls: Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->playSound(I)V
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->access$1(Lcom/lx/launcher8/setting/wp8/LockSoundListAct;I)V

    .line 94
    return-void
.end method
