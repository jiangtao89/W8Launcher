.class Lcom/lx/launcher8/AnallLauncher$8;
.super Ljava/lang/Object;
.source "AnallLauncher.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


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
    iput-object p1, p0, Lcom/lx/launcher8/AnallLauncher$8;->this$0:Lcom/lx/launcher8/AnallLauncher;

    .line 1434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher$8;->this$0:Lcom/lx/launcher8/AnallLauncher;

    invoke-virtual {v0, p2, p1}, Lcom/lx/launcher8/AnallLauncher;->onChanged(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 1438
    return-void
.end method
