.class Lcom/anall/statusbar/StatusBarListen$App;
.super Ljava/lang/Object;
.source "StatusBarListen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anall/statusbar/StatusBarListen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "App"
.end annotation


# instance fields
.field checked:Z

.field draw:Landroid/graphics/drawable/Drawable;

.field pkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/anall/statusbar/StatusBarListen;

.field title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/anall/statusbar/StatusBarListen;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/anall/statusbar/StatusBarListen$App;->this$0:Lcom/anall/statusbar/StatusBarListen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
