.class Lpl/mkexplorer/kormateusz/adapters/AdapterHome$2;
.super Ljava/lang/Object;
.source "AdapterHome.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkexplorer/kormateusz/adapters/AdapterHome;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkexplorer/kormateusz/adapters/AdapterHome;


# direct methods
.method constructor <init>(Lpl/mkexplorer/kormateusz/adapters/AdapterHome;)V
    .locals 0

    iput-object p1, p0, Lpl/mkexplorer/kormateusz/adapters/AdapterHome$2;->this$0:Lpl/mkexplorer/kormateusz/adapters/AdapterHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lpl/mkexplorer/kormateusz/adapters/AdapterHome$2;->this$0:Lpl/mkexplorer/kormateusz/adapters/AdapterHome;

    invoke-static {v0}, Lpl/mkexplorer/kormateusz/adapters/AdapterHome;->access$200(Lpl/mkexplorer/kormateusz/adapters/AdapterHome;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/mkexplorer/kormateusz/adapters/AdapterHome$2;->this$0:Lpl/mkexplorer/kormateusz/adapters/AdapterHome;

    invoke-static {v0}, Lpl/mkexplorer/kormateusz/adapters/AdapterHome;->access$200(Lpl/mkexplorer/kormateusz/adapters/AdapterHome;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
