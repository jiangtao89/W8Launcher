.class Lcom/lx/launcher8/adapter/AppAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/adapter/AppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field imageTv:Landroid/widget/TextView;

.field layout:Landroid/widget/LinearLayout;

.field layoutRect:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/lx/launcher8/adapter/AppAdapter;

.field titleTv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/adapter/AppAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/lx/launcher8/adapter/AppAdapter$ViewHolder;->this$0:Lcom/lx/launcher8/adapter/AppAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
