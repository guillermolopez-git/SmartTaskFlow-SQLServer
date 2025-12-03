public interface IRepository<T>
{
    void Add(T item);
    void Update(T item);
    void Delete(Guid id);
    T GetById(Guid id);
    List<T> GetAll();

}