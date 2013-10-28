.class Lcom/lx/launcher8/adapter/UrlAdapter$CustomURLSpan;
.super Landroid/text/style/URLSpan;
.source "UrlAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/adapter/UrlAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomURLSpan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/adapter/UrlAdapter;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/adapter/UrlAdapter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "url"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/lx/launcher8/adapter/UrlAdapter$CustomURLSpan;->this$0:Lcom/lx/launcher8/adapter/UrlAdapter;

    .line 75
    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 76
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "ds"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 82
    iget-object v0, p0, Lcom/lx/launcher8/adapter/UrlAdapter$CustomURLSpan;->this$0:Lcom/lx/launcher8/adapter/UrlAdapter;

    #getter for: Lcom/lx/launcher8/adapter/UrlAdapter;->mTextColor:I
    invoke-static {v0}, Lcom/lx/launcher8/adapter/UrlAdapter;->access$0(Lcom/lx/launcher8/adapter/UrlAdapter;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 83
    return-void
.end method
