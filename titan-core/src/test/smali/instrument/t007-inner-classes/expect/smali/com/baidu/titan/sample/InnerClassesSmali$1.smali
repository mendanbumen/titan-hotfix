.class public Lcom/baidu/titan/sample/InnerClassesSmali$1;
.super Ljava/lang/Object;
.source "InnerClassesSmali.java"

#interfaces
.implements Ljava/lang/Runnable;

# annotations

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/titan/sample/InnerClassesSmali;->doSomething()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static synthetic $ic:Lcom/baidu/titan/sdk/runtime/Interceptable;


# instance fields

.field public transient synthetic $fh:Lcom/baidu/titan/sdk/runtime/FieldHolder;

.field public final synthetic this$0:Lcom/baidu/titan/sample/InnerClassesSmali;


# direct methods

.method public constructor <init>(Lcom/baidu/titan/sample/InnerClassesSmali;)V
    .param p1    # Lcom/baidu/titan/sample/InnerClassesSmali;
    .locals 5


    sget-object v0, Lcom/baidu/titan/sample/InnerClassesSmali$1;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/baidu/titan/sample/InnerClassesSmali$1;->this$0:Lcom/baidu/titan/sample/InnerClassesSmali;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :cond_1
    invoke-static {}, Lcom/baidu/titan/sdk/runtime/TitanRuntime;->newInitContext()Lcom/baidu/titan/sdk/runtime/InitContext;

    move-result-object v1

    const v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, v1, Lcom/baidu/titan/sdk/runtime/InitContext;->initArgs:[Ljava/lang/Object;

    const/16 v3, 0x0

    aput-object p1, v2, v3

    const/high16 v2, 0x10000

    invoke-interface {v0, v2, v1}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeUnInit(ILcom/baidu/titan/sdk/runtime/InitContext;)V

    iget v3, v1, Lcom/baidu/titan/sdk/runtime/InitContext;->flag:I

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_0

    and-int/lit8 v4, v3, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v1, Lcom/baidu/titan/sdk/runtime/InitContext;->thisArg:Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeInitBody(ILcom/baidu/titan/sdk/runtime/InitContext;)V

    return-void


.end method


# virtual methods

.method public run()V
    .locals 4


    sget-object v0, Lcom/baidu/titan/sample/InnerClassesSmali$1;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 13
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 14
    return-void

    :cond_1
    move-object v2, v0

    const/high16 v3, 0x100000

    # register: v2, v3, p0
    invoke-interface/range {v2 .. p0}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void


.end method
