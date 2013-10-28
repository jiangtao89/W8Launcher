.class Lcom/anall/statusbar/ExpendAct$2;
.super Ljava/lang/Object;
.source "ExpendAct.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anall/statusbar/ExpendAct;->expendStatebar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anall/statusbar/ExpendAct;


# direct methods
.method constructor <init>(Lcom/anall/statusbar/ExpendAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anall/statusbar/ExpendAct$2;->this$0:Lcom/anall/statusbar/ExpendAct;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 89
    iget-object v5, p0, Lcom/anall/statusbar/ExpendAct$2;->this$0:Lcom/anall/statusbar/ExpendAct;

    iget v6, v5, Lcom/anall/statusbar/ExpendAct;->mFlags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v5, Lcom/anall/statusbar/ExpendAct;->mFlags:I

    .line 91
    :try_start_0
    iget-object v5, p0, Lcom/anall/statusbar/ExpendAct$2;->this$0:Lcom/anall/statusbar/ExpendAct;

    const-string v6, "statusbar"

    invoke-virtual {v5, v6}, Lcom/anall/statusbar/ExpendAct;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 92
    .local v4, service:Ljava/lang/Object;
    if-eqz v4, :cond_1

    .line 93
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-le v5, v6, :cond_0

    const/4 v2, 0x1

    .line 94
    .local v2, high:Z
    :cond_0
    if-eqz v2, :cond_2

    const-string v3, "expandNotificationsPanel"

    .line 95
    .local v3, method:Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v5, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 96
    .local v1, expand:Ljava/lang/reflect/Method;
    if-nez v1, :cond_1

    .line 97
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .end local v1           #expand:Ljava/lang/reflect/Method;
    .end local v2           #high:Z
    .end local v3           #method:Ljava/lang/String;
    .end local v4           #service:Ljava/lang/Object;
    :cond_1
    :goto_1
    return-void

    .line 94
    .restart local v2       #high:Z
    .restart local v4       #service:Ljava/lang/Object;
    :cond_2
    const-string v3, "expand"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    .end local v2           #high:Z
    .end local v4           #service:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
