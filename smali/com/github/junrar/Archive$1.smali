.class Lcom/github/junrar/Archive$1;
.super Ljava/lang/Object;
.source "Archive.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/junrar/Archive;->getInputStream(Lcom/github/junrar/rarfile/FileHeader;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/junrar/Archive;

.field final synthetic val$hd:Lcom/github/junrar/rarfile/FileHeader;

.field final synthetic val$out:Ljava/io/PipedOutputStream;


# direct methods
.method constructor <init>(Lcom/github/junrar/Archive;Lcom/github/junrar/rarfile/FileHeader;Ljava/io/PipedOutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/github/junrar/Archive$1;->this$0:Lcom/github/junrar/Archive;

    iput-object p2, p0, Lcom/github/junrar/Archive$1;->val$hd:Lcom/github/junrar/rarfile/FileHeader;

    iput-object p3, p0, Lcom/github/junrar/Archive$1;->val$out:Ljava/io/PipedOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/github/junrar/Archive$1;->this$0:Lcom/github/junrar/Archive;

    iget-object v1, p0, Lcom/github/junrar/Archive$1;->val$hd:Lcom/github/junrar/rarfile/FileHeader;

    iget-object v2, p0, Lcom/github/junrar/Archive$1;->val$out:Ljava/io/PipedOutputStream;

    invoke-virtual {v0, v1, v2}, Lcom/github/junrar/Archive;->extractFile(Lcom/github/junrar/rarfile/FileHeader;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Lcom/github/junrar/exception/RarException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/github/junrar/Archive$1;->val$out:Ljava/io/PipedOutputStream;

    invoke-virtual {v0}, Ljava/io/PipedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/github/junrar/Archive$1;->val$out:Ljava/io/PipedOutputStream;

    invoke-virtual {v0}, Ljava/io/PipedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/github/junrar/Archive$1;->val$out:Ljava/io/PipedOutputStream;

    invoke-virtual {v1}, Ljava/io/PipedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    throw v0

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
