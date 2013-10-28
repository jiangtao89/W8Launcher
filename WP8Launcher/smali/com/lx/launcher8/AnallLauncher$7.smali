.class Lcom/lx/launcher8/AnallLauncher$7;
.super Ljava/lang/Object;
.source "AnallLauncher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/AnallLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/AnallLauncher;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/AnallLauncher;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/AnallLauncher$7;->this$0:Lcom/lx/launcher8/AnallLauncher;

    .line 1167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1178
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1179
    .local v0, defloc:Ljava/util/Locale;
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1180
    .local v1, regx:Ljava/lang/String;
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher$7;->this$0:Lcom/lx/launcher8/AnallLauncher;

    iget-object v2, v2, Lcom/lx/launcher8/AnallLauncher;->mAppGridView:Lcom/lx/launcher8/view/FilterGridView;

    invoke-virtual {v2, v1}, Lcom/lx/launcher8/view/FilterGridView;->setFilterText(Ljava/lang/String;)V

    .line 1181
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1174
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1170
    return-void
.end method
