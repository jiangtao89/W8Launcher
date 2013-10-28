.class Lcom/lx/launcher8/setting/ThemePickAct$4;
.super Ljava/lang/Object;
.source "ThemePickAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/ThemePickAct;->createView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/ThemePickAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/ThemePickAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/ThemePickAct$4;->this$0:Lcom/lx/launcher8/setting/ThemePickAct;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/ThemePickAct$4;)Lcom/lx/launcher8/setting/ThemePickAct;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemePickAct$4;->this$0:Lcom/lx/launcher8/setting/ThemePickAct;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 119
    new-instance v0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    iget-object v1, p0, Lcom/lx/launcher8/setting/ThemePickAct$4;->this$0:Lcom/lx/launcher8/setting/ThemePickAct;

    #getter for: Lcom/lx/launcher8/setting/ThemePickAct;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/setting/ThemePickAct;->access$6(Lcom/lx/launcher8/setting/ThemePickAct;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0005

    invoke-direct {v0, v1, v2}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;-><init>(Landroid/content/Context;I)V

    .line 120
    .local v0, dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;
    new-instance v1, Lcom/lx/launcher8/setting/ThemePickAct$4$1;

    invoke-direct {v1, p0, v0}, Lcom/lx/launcher8/setting/ThemePickAct$4$1;-><init>(Lcom/lx/launcher8/setting/ThemePickAct$4;Lcom/lx/launcher8/setting/view/DialogSaveTheme;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->createSaveTheme()Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->show()V

    .line 147
    return-void
.end method
