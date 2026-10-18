.class Lcom/ninmods/loader/EngineManager$1$2;
.super Ljava/lang/Object;
.source "EngineManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ninmods/loader/EngineManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ninmods/loader/EngineManager$1;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/ninmods/loader/EngineManager$1;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/ninmods/loader/EngineManager$1$2;->this$0:Lcom/ninmods/loader/EngineManager$1;

    iput-object p2, p0, Lcom/ninmods/loader/EngineManager$1$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$1$2;->this$0:Lcom/ninmods/loader/EngineManager$1;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$1;->val$callback:Lcom/ninmods/loader/EngineManager$OutputCallback;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$1$2;->this$0:Lcom/ninmods/loader/EngineManager$1;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$1;->val$callback:Lcom/ninmods/loader/EngineManager$OutputCallback;

    iget-object v1, p0, Lcom/ninmods/loader/EngineManager$1$2;->val$e:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[-] Failed to launch Root RAM Engine: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ninmods/loader/EngineManager$OutputCallback;->onOutput(Ljava/lang/String;)V

    .line 108
    :cond_0
    return-void
.end method
