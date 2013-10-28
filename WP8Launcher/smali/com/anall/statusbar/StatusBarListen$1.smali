.class Lcom/anall/statusbar/StatusBarListen$1;
.super Ljava/lang/Object;
.source "StatusBarListen.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anall/statusbar/StatusBarListen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/anall/statusbar/StatusBarListen$App;",
        ">;"
    }
.end annotation


# instance fields
.field final sCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/anall/statusbar/StatusBarListen;


# direct methods
.method constructor <init>(Lcom/anall/statusbar/StatusBarListen;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anall/statusbar/StatusBarListen$1;->this$0:Lcom/anall/statusbar/StatusBarListen;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/anall/statusbar/StatusBarListen$1;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/anall/statusbar/StatusBarListen$App;Lcom/anall/statusbar/StatusBarListen$App;)I
    .locals 3
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 174
    iget-boolean v0, p1, Lcom/anall/statusbar/StatusBarListen$App;->checked:Z

    iget-boolean v1, p2, Lcom/anall/statusbar/StatusBarListen$App;->checked:Z

    if-ne v0, v1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/anall/statusbar/StatusBarListen$1;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/anall/statusbar/StatusBarListen$App;->title:Ljava/lang/String;

    iget-object v2, p2, Lcom/anall/statusbar/StatusBarListen$App;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 177
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p1, Lcom/anall/statusbar/StatusBarListen$App;->checked:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/anall/statusbar/StatusBarListen$App;

    check-cast p2, Lcom/anall/statusbar/StatusBarListen$App;

    invoke-virtual {p0, p1, p2}, Lcom/anall/statusbar/StatusBarListen$1;->compare(Lcom/anall/statusbar/StatusBarListen$App;Lcom/anall/statusbar/StatusBarListen$App;)I

    move-result v0

    return v0
.end method
