.class Lcom/anall/statusbar/AppListen$Notice;
.super Ljava/lang/Object;
.source "AppListen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anall/statusbar/AppListen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Notice"
.end annotation


# instance fields
.field mCount:I

.field mListenFlags:I

.field mPkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/anall/statusbar/AppListen;


# direct methods
.method public constructor <init>(Lcom/anall/statusbar/AppListen;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter "pkg"
    .parameter "flag"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/anall/statusbar/AppListen$Notice;->this$0:Lcom/anall/statusbar/AppListen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p2, p0, Lcom/anall/statusbar/AppListen$Notice;->mPkg:Ljava/lang/String;

    .line 265
    iput p3, p0, Lcom/anall/statusbar/AppListen$Notice;->mListenFlags:I

    .line 266
    const/4 v0, 0x0

    iput v0, p0, Lcom/anall/statusbar/AppListen$Notice;->mCount:I

    .line 267
    return-void
.end method
